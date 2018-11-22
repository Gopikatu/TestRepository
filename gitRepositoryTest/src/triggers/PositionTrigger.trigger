trigger PositionTrigger on Position__c (after insert) {
    if(trigger.isafter&& trigger.isinsert){
        for(Position__c p : trigger.new){
            
            if(p.Id!=null){
                
                
            }
            
        }
        
    }

}