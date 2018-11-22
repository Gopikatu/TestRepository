public class AccountContactOpportunityWizardpagecntlr {
    public AccountContactOpportunityWizardpagecntlr(){
         myaccount=new account();
         mycontact=new contact();
         myopportunity=new opportunity();
    }
   

public account myaccount{get;set;}
public contact mycontact{get;set;}
public opportunity myopportunity{get;set;}
    public pagereference navigatetOppInpitPage(){
        pagereference pref=new pagereference('/apex/AccountContactOpportunityWizardpage2');
        return pref;
    }public pagereference gotoSummeryPage(){
        pagereference pref=new pagereference('/apex/AccountContactOpportunityWizardpage3');
        return pref;
    }
    
     public PageReference submitToserver() {
         
         
         insert myaccount;
          
         mycontact.AccountId=myaccount.Id;
         insert mycontact;
        
         myopportunity.AccountId=myaccount.Id;
         insert myopportunity;
         PageReference pgeref=new PageReference('/O'+myaccount.id);
        return pgeref;
    }

   
}