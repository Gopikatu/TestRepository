public class attachmentControler {
 
public account acc{get;set;}
public attachmentControler (){
acc=new account();
}

 public PageReference save() {
 
 
 
 
 insert acc;
         return new PageReference ('/'+acc.id);
    }
}