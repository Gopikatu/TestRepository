@isTest
public class CandidateTriggerHandlerTest { 
    public static TestMethod void candidateemailcomformationtest(){
        test.startTest();
        list<lightninhcomp__Candidate__c> clist=new list<lightninhcomp__Candidate__c>();
        for(integer i=0; i<10; i++){
        lightninhcomp__Candidate__c c=new lightninhcomp__Candidate__c();
        c.Name='ctest'+i;
        c.lightninhcomp__DOB__c=system.today();
        c.lightninhcomp__Email__c='a@gmail.com';
            clist.add(c);
        }
        insert(clist);
        list<lightninhcomp__Candidate__c> cdetails=[select id,Name,lightninhcomp__DOB__c,lightninhcomp__Email__c from lightninhcomp__Candidate__c ];
        CandidateTriggerHandler hnd=new CandidateTriggerHandler();
        hnd.hndler(cdetails);
        test.stopTest();
        
    }
}