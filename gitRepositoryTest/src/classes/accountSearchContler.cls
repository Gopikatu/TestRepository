public class accountSearchContler {
    public list<account> Accountrecord{get;set;}   
    public string Name{get;set;}
    public Boolean b=false;
    
    public void getSubmit() {
          
            b=True;
            Accountrecord=new list<account>();
            Accountrecord=[select id,name,phone from account where name=:Name];          
        
            if(Accountrecord.isempty()){
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.INFO,'Account not exist with provided Account name');
    ApexPages.addMessage(myMsg);
    }
       
    }  
}