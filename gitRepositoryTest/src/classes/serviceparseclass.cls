public class serviceparseclass {
    public string userid='sakshi77@gmail.com';
    public string password='Pass@123';
    public string ConsumerKey='3MVG9d8..z.hDcPL1brQkqUXrE8evlfbKrKsxSai4qZM8H8yB_I7RlsFYTv2nf4jg8ZLsLuVMvyEKI69iA5s8';
    public string ConsumerSecret='2251215104479226997';
    public string  getaccesstoken(){
        string accesskey=('grant_type=password' + 
      '&client_id=' + ConsumerKey + 
      '&client_secret=' + ConsumerSecret + 
      '&username=' + userid +
      '&password=' + password);
        Http hp=new Http();
HttpRequest req=new HttpRequest();
   req.setEndpoint('https://gopik-dev-ed.my.salesforce.com/services/oauth2/token?'+accesskey);
   req.setMethod('POST');
         
    //   req.setBody(accesskey);    
   
 HttpResponse resp=hp.send(req);
   string respBody=resp.getbody();
        

        return respBody;
    }
}