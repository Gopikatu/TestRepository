@istest
public class AccountContactOpportunityWizardpageTest {
    public static testmethod void dotest(){
        //dummydata
        test.startTest();
        account ac=new account();
        ac.Name='test';
        ac.Active__c='yes';
        ac.Fax='5766879';
        ac.Industry='banking';
        ac.Phone='77878990';
        
        contact crecd=new contact();
        crecd.AccountId=ac.Id;
        crecd.LastName='test';
        crecd.Phone='7658709';
        crecd.Salary__c=100.00;
        
        test.setCurrentPage(page.AccountContactOpportunityWizardpage);
        AccountContactOpportunityWizardpagecntlr abc=new AccountContactOpportunityWizardpagecntlr();
        abc.myaccount=ac;
        abc.mycontact=crecd;
        abc.navigatetOppInpitPage();
        //dummy data
        opportunity o=new opportunity();
        o.AccountId=ac.Id;
        o.CloseDate=system.today();
        o.Name='test';
        o.Probability=100;
        o.StageName='last';
        o.Type='phone';
        
        abc.myopportunity=o;
        abc.gotoSummeryPage();
        abc.submitToserver();
        insert ac;
        insert crecd;
        insert o;
        test.stopTest();
        //checking results
        account ar=[select id,name,AccountNumber from account];
        system.assertEquals(true, ar!=null, 'account not created...');
        contact cr=[select id,accountid,name from contact];
        system.assertEquals(ar.Id, cr.Id, 'contact not matched...');
        opportunity ore=[select id,accountid,name from opportunity];
        system.assertEquals(ar.Id, ore.Id, 'opportunity not matched...');
    }
    
    }