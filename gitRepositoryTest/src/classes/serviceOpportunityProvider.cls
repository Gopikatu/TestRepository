@RestResource(Urlmapping='/opportuntyDetails/*')
global class serviceOpportunityProvider {
   
    @HttpGet
    global static list<Opportunity> OppProvider(){
        RestRequest req=Restcontext.request;
        RestResponse res=Restcontext.response;
        string accid=req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        list<Opportunity> oppRecordsList=[SELECT Id, AccountId, Name, OwnerId FROM Opportunity where AccountId =: accid];
        return oppRecordsList;
    }
}