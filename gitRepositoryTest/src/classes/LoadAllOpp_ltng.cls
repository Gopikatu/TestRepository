public class LoadAllOpp_ltng {
@auraEnabled
    public static list<Opportunity> doLoadOpp(){
        list<Opportunity> opplist=[select id,CloseDate,Name,StageName from Opportunity];
        return opplist;
    }
}