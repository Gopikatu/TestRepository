public class ShowAllContacts_ltng {
@auraEnabled
    public static List<contact> getAllContacts(){
        List<contact> allContactsList=[select id,lastName,fax,email from contact];
        return allContactsList;
        
    }
}