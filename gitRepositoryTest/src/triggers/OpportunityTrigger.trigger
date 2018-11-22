trigger OpportunityTrigger on Opportunity (before delete,after delete) {
OpportunityTriggerHandler hndler=new OpportunityTriggerHandler();    
    if(trigger.isbefore&& trigger.isdelete){
        hndler.auitharizationcheck(trigger.old);
        
    }
    else if(trigger.isafter&& trigger.isdelete){
        hndler.sendconformationemail(trigger.old);
       
    }
    

}