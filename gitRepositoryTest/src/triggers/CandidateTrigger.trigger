trigger CandidateTrigger on Candidate__c (after insert) {
    if(trigger.isafter&& trigger.isinsert){
        CandidateTriggerHandler j=new CandidateTriggerHandler();
        j.hndler(Trigger.new);
    }
}