@isTest
public class tranInsertClsTest {    
    public static TestMethod void doTestTransInsert(){
        test.startTest();
        contact c=new contact();
        c.Phone='123456789';
        c.LastName='testlast';
        insert c;
        tranInsertCls s=new tranInsertCls();
        s.dotranInsertCls(10);
        test.stopTest();
        integer transCount=[select count() from Transation__c];
        system.debug('transCount'+transCount);
        system.assertEquals(11, transCount, 'error');
    }
}