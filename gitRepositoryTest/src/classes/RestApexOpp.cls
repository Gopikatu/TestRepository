@RestResource(urlMapping='/v1/oppinfo/*')
global class RestApexOpp {

    @HttpGet
    global static list<account> getallopps(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        list<account> accountlist = [SELECT Id,name FROM Account];
        system.debug('account'+accountlist);
        return accountlist;
    }
}