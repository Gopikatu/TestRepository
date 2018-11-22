public class document {

    public document(ApexPages.StandardController controller) {

    }
 Public Attachment myfile;
    Public Attachment getmyfile()
    {
        myfile = new Attachment();
        return myfile;
    }
   
    Public PageReference Savedoc()
    {
        String accid = System.currentPagereference().getParameters().get('id');

        Attachment a = new Attachment(parentId = 'accid', name=myfile.name, body = myfile.body);
         
         /* insert the attachment */
         insert a;
        return new PageReference('ApexPages.currentPage().getHeaders().get()');
    }   

}