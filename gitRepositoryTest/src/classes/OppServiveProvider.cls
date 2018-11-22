@RestResource(urlMapping='/aos/opplistdetails/*')
global class OppServiveProvider {
    
    @HttpGet
    global static list<Opportunity> opplistmethod(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        string oppid=req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        list<Opportunity> opplist=[select Id,Name,StageName,CloseDate from Opportunity where Id =: oppid];
        return opplist;
        
    }
}