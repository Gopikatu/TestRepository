public class OpertunityUpdateBatchJob implements database.Batchable<Sobject>{
    public database.QueryLocator start(Database.BatchableContext bc){
        return database.getQueryLocator('SELECT Id, Name, CloseDate, OwnerId, StageName,LeadSource FROM Opportunity');        
    }
    public void execute(database.BatchableContext bc,list<Opportunity> opplist){
       list<opportunity> opplisttoupdate=new list<opportunity>();
        Map<id,string> oppmap=new map<id,string>(); 
         for(opportunity o : opplist){
            oppmap.put(o.id,o.LeadSource);
             o.LeadSource=oppmap.get('0067F00000CuVoR');
             opplisttoupdate.add(o);
         }if(!opplisttoupdate.isempty()){
             try{
                 database.update(opplisttoupdate);
             }catch(exception e){
             }
         }
    }
    public void finish(database.BatchableContext bc){
                   AsyncApexJob a = [SELECT Id, CreatedDate, CreatedById, JobType, 
                                     ApexClassId, Status, JobItemsProcessed, TotalJobItems, 
                                     NumberOfErrors, CompletedDate, MethodName, ExtendedStatus,
                                     ParentJobId, LastProcessed, LastProcessedOffset FROM AsyncApexJob WHERE Id = :BC.getJobId()];
   // Send an email to the Apex job's submitter notifying of job completion.
   Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
   String[] toAddresses = new String[] {'gopikatukojwala@gmail.com'};
   mail.setToAddresses(toAddresses);
   mail.setSubject('Apex Sharing Recalculation ' + a.Status);
   mail.setTemplateId('00X7F000000ptWD') ;    
   mail.setPlainTextBody
   ('The batch Apex job processed ' + a.TotalJobItems +
   ' batches with '+ a.NumberOfErrors + ' failures.'+'CreatedDate'+a.CreatedDate +
    'CreatedById'+a.CreatedById +'JobType'+a.JobType +'ApexClassId'+a.ApexClassId + 'MethodNamea'+a.MethodName +'label'+label.oppbtact);
   Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

        
    }

}