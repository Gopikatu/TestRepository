public class Samplebatchjob implements database.Batchable<Sobject>{
    
    public  database.querylocator start(database.BatchableContext bc){
        string query=null;
        return database.getQueryLocator(query);
        
    }
    public void execute(database.BatchableContext bc, List<SObject> scope){
        
    }
    public void finish(Database.BatchableContext bc){
        
    }
    
}