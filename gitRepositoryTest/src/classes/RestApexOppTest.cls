@isTest
public class RestApexOppTest {

    public static TestMethod void httpcalloutTest(){
       Test.setMock(HttpCalloutMock.class, new RestApexOppHttpMock());
        
       //account res = RestApexOpp.getallopps();
        
        
       

    }
}