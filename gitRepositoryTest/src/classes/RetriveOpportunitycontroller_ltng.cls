public class RetriveOpportunitycontroller_ltng {
@auraEnabled
    public static list<Opportunity> RetriveAllrecords(){
       list<Opportunity> opplist=[select Id,Name,CloseDate,StageName,
                lightninhcomp__OrderNumber__c,lightninhcomp__TrackingNumber__c from Opportunity];
        return opplist;
    }
}