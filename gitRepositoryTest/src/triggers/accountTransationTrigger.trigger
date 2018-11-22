trigger accountTransationTrigger on Account (before insert,after insert) {
    list<Transation__c> transist=new list<Transation__c>();
    for(account a : trigger.new){
        Transation__c t=new Transation__c();
        if(trigger.isbefore&& trigger.isinsert){
             t.accountname__c='Before'+a.Name+'transcation';
        }else if(trigger.isafter&& trigger.isinsert){
             t.accountname__c='after'+a.Name+'transcation';
        }
           t.Transcation_date_and_time__c=a.CreatedDate;
          
           transist.add(t);
    } 
    if(!transist.isEmpty()){
        database.insert(transist);
    }
    

}