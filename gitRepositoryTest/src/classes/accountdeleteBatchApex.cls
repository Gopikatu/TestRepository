global  class accountdeleteBatchApex implements database.Batchable<Sobject>{
    global  database.QueryLocator start(Database.BatchableContext bc){
       // list<account> query=[select Name from account limit 100];
        
        return database.getQueryLocator([select Name from account limit 20]);
    }
    global  void execute(Database.BatchableContext bc, List<account> alist){
        
        delete alist;
    }
    global  void finish(Database.BatchableContext bc){
        AsyncApexJob job=new AsyncApexJob();
        
    }
}