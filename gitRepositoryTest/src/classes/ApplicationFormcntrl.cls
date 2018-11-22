public class ApplicationFormcntrl {
private final Applicant__c applicant;
public Blob resume {get; set;}
public String contentType {get; set;}
public String fileName {get; set;}

    public ApplicationFormcntrl(ApexPages.StandardController controller) {
applicant =new Applicant__c ();
    }
    public PageReference saveApplication() {

  try{
        insert(applicant);                                       
   }catch(System.DMLException e){
      ApexPages.addMessages(e);
       return null;
}

if(resume!=null){
      Attachment attach=new Attachment();
      attach.Body=resume;
      attach.Name=filename;
      attach.ContentType=contentType;
      attach.ParentID=applicant.id;
    try {
          insert(attach);
      } catch(System.DMLException e) {
          ApexPages.addMessages(e);
          return null;
      }
  }
  PageReference p = Page.Confirmpage;
        p.setRedirect(true);
        return p;                    
}

}