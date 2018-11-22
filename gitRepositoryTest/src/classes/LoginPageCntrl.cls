public class LoginPageCntrl { 
    public list<Login__c> llist;
    public Login__c uname{get;set;}
    public Login__c password{get;set;}
    public list<Login__c> LoginPageCntrl (){        
        llist=new list<Login__c>();        
        list<Login__c> loginlist=[select uname__c,Passward__c from Login__c];
        for(Login__c l : loginlist){
            llist.add(l);          
                                
        }
         return llist;
    } 
    public PageReference navigateToyoutubePage() {
        
            PageReference pref=new PageReference ('https://www.google.co.in');
            return pref;  
        
                   
        
    }
   
}