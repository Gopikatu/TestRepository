public class AttachmentUploadController {
 public String parentId {get;set;}
    public Attachment attach {get;set;}
    public string caseid{get;set;}
    public blob file{get;set;}
    public AttachmentUploadController()
    {
        attach = new Attachment();
    }

    //When user clicks upload button on Visualforce Page, perform upload/insert
    //Redirect user to newly inserted document
    public ApexPages.Pagereference upload()
    {

        //This shows how to insert an Attachment
        attach.ParentId = CaseId;
        attach.body =file;
        insert attach;


        return new ApexPages.Standardcontroller(attach).view();   
    }
}