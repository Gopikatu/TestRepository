public class AccountIndustryUpdatebatchJob implements database.Batchable<Sobject>{
     
    public database.QueryLocator start(Database.BatchableContext bc){
        return database.getQueryLocator('SELECT Id, Name, Industry FROM Account where industry=null');
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        List<account> accounttoupdate=new List<account>();
        for(account a : scope){
            a.Industry='Agriculture';
            accounttoupdate.add(a);
        }
        if(!accounttoupdate.isEmpty()){
            database.update(accounttoupdate);
            
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