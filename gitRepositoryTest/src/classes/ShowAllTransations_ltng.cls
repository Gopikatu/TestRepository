public class ShowAllTransations_ltng {    
    @auraEnabled
    public  static list<lightninhcomp__Transation__c> ShowAllTrans(){
        list<lightninhcomp__Transation__c> listTrans=[select Id,lightninhcomp__Transation_ID__c,
                                                      lightninhcomp__Transcation_date_and_time__c,
                                                      lightninhcomp__Transcation_Status__c,
                                                      lightninhcomp__Ammount_of_Transcation__c 
                                                      from lightninhcomp__Transation__c]; 
        
        
        return listTrans;
    }
}