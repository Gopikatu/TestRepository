public class QaccountdetailpageController {
    public account acc{get;set;}
    public QaccountdetailpageController(){
         acc=new account();
        string accid=ApexPages.CurrentPage().getParameters().get('id');
         acc=[select id,name,accountnumber,phone,fax from account where id= : accid];
        system.debug(acc);
    }
    public pagereference doinsertaccount(){
        
            update acc;
            return null;
        
    }
}