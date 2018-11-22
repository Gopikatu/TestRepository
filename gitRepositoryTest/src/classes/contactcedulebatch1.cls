public class contactcedulebatch1 implements Schedulable{
    public void execute(schedulableContext sc){
        ContactUpdateBatchJob bat=new ContactUpdateBatchJob();
        database.executeBatch(bat, 100);
    }
    public static void schandler(){
        contactcedulebatch1 scbatch=new contactcedulebatch1();
     String sch = '0 48 12 1/1 * ? *';
     String jobID = system.schedule('userrr', sch, scbatch);
    }

}