public class AccountInsertController_ltng {
    @auraEnabled
    public static account doAccountInsert(account SobjAccount){
        upsert SobjAccount;
        return SobjAccount;
    }

}