public class AccountRecordsinAos {
    public  AccountRecordsinAos(){
        list<account> alist=[select Id,Name from account];
        system.debug('alist'+alist.size());
    
    }
}