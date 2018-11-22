public class ContactUpdateBatchJob implements database.Batchable<Sobject> {
    public database.QueryLocator start(Database.BatchableContext bc){
        
        return database.getQueryLocator('select id,lastname,title from contact');
    }
    public void execute(Database.BatchableContext bc, List<contact> contactlist){
        list<contact> clist=new list<contact>();
        map<id,string> conmap=new map<id,string>();
        for(contact c : contactlist){
            conmap.put(c.id,c.title);
            c.title=conmap.get('0037F00000ba6rk');
            clist.add(c);
        }

        if(!clist.isempty()){
            try{
                database.update(clist);
            }catch(exception e){
                
            }
        }
        
    }
    public void finish(Database.BatchableContext bc){
           AsyncApexJob a = [SELECT Id, Status, NumberOfErrors, JobItemsProcessed,
      TotalJobItems, CreatedBy.Email
      FROM AsyncApexJob WHERE Id =
      :BC.getJobId()];
   // Send an email to the Apex job's submitter notifying of job completion.
   Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
   String[] toAddresses = new String[] {a.CreatedBy.Email};
   mail.setToAddresses(toAddresses);
   mail.setSubject('Apex Sharing Recalculation ' + a.Status);
   mail.setPlainTextBody
   ('The batch Apex job processed ' + a.TotalJobItems +
   ' batches with '+ a.NumberOfErrors + ' failures.');
   Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

        
    }

}