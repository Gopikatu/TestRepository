public class RestTest {
    public  string clientId='3MVG9YDQS5WtC11o_J7qZTRF1emZEaXMck8JfgMM5lqv0NzBSMeAz8uRRfstU2m_Bu7c8aNrHExLQE7c7I6x2';
    
    public  string clientSecret='5286551834111836358';
    public  string username='integration@aos.com';
    public  string password='Pass@123';
    
    public  string oauthLogin() {
        HttpRequest req = new HttpRequest(); 
 
        req.setMethod('POST');
        req.setEndpoint('https://ap4.salesforce.com/services/oauth2/token');
        req.setBody('grant_type=password' +
            '&client_id=' + clientId +
            '&client_secret=' + clientSecret +
            '&username=' + EncodingUtil.urlEncode(username, 'UTF-8') +
            '&password=' + EncodingUtil.urlEncode(password, 'UTF-8'));
    
        Http http = new Http();
  
        HTTPResponse res = http.send(req);
        string body=res.getBody();

        System.debug('BODY: '+res.getBody());
        System.debug('STATUS:'+res.getStatus());
        System.debug('STATUS_CODE:'+res.getStatusCode());
        
        return body;
    }
}