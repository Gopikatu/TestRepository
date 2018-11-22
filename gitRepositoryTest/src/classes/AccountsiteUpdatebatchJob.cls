public class AccountsiteUpdatebatchJob implements database.Batchable<Sobject>{
      
    public database.QueryLocator start(Database.BatchableContext bc){
        return database.getQueryLocator('SELECT Id, Name,site,website FROM Account');
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        list<account> accountlist=new list<account>();
        map<string,string> accmap=new map<string,string>();
        for(account a : scope){
            accmap.put('a.name','a.site');
            string val=accmap.get('Edge Communications');
            
              a.Site=val;
            accountlist.add(a);
        }if(!accountlist.isEmpty()){
            database.update(accountlist);
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