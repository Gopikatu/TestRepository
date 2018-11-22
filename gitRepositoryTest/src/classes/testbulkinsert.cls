public class testbulkinsert {
    public  account a;
    public testbulkinsert(){
        a=new account(); 
        a.name='newone';
        insert a;
        if(a.Id != null){
            doinsertcontacts();
        }
    }
    public void doinsertcontacts(){              
        list<contact> contactlist=new list<contact>();
        for(integer i=0; i<5; i++){
            contact c=new contact();
            c.lastname='wonderful__'+i;
            c.accountid=a.id;            
            c.salary__c=100.00;
            c.phone='76876598';          
            
        }
        insert contactlist;
    }      
    
}