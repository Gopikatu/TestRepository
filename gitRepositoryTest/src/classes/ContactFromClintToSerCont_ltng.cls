public class ContactFromClintToSerCont_ltng {
    @auraEnabled
    public static contact CreateContact(contact conObj){
        upsert conObj;
        return conObj;
    }

}