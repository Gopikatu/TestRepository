@istest
public class SearchCaseControllerTest {
    public static testmethod void searchcaseTest(){
       //dummy data
       test.startTest();
       case c=new case();
        c.Status='working';
        c.Origin='phone';
        
        insert c;
        test.stopTest();
        case cs=[SELECT Id, IsDeleted, CaseNumber, ContactId, AccountId, Status, 
        Origin, Subject, Priority, ClosedDate, CreatedDate, CreatedById,
         ContactMobile, Product__c FROM Case];
        system.assertEquals(true, cs.CaseNumber!=null, 'not matched...');
        //loding visualforec page
       test.setCurrentPage(page.SearchCase);
        SearchCaseController s=new SearchCaseController();
       s.casenumberinput=cs.CaseNumber;
             s.searchmethod();
        
        
       
    }
}