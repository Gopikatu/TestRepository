public class RetriveAccountRecordsCont_ltng {
@auraEnabled
    public static list<account> retiveAccounts(){
        list<account> acclist=[select id,name,phone from account];
        return acclist;
    }
}