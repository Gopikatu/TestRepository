public class sampleCurrency {
    
    public decimal totalsum=0.0;
    public  sampleCurrency(){
        
        list<contact> contactlist=[select name,salary__C,accountid from contact
                                   where salary__c !=null and accountid = '0017F00000pOIEJ' ];
        system.debug('contactlist'+contactlist);
        list<decimal> salarylist=new list<decimal>();
        for(contact c : contactlist){
            salarylist.add(c.salary__c);
        }for(integer i=0; i<salarylist.size(); i++){
            totalsum=totalsum + salarylist[i];
            
        }if(totalsum !=null){
            list<account> acclist=[select id,Total_Contacts_Salary__c from account where id='0017F00000pOIEJ'];
            list<account> dec=new list<account>();
            for(account ac : acclist){
               ac.Total_Contacts_Salary__c=totalsum;
                dec.add(ac);
            }
            
           
            update dec;
        }
    }
}