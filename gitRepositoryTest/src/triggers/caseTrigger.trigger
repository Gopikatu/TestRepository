trigger caseTrigger on Case (after insert) {
    if(trigger.isafter&& trigger.isinsert){
        caseTriggerHandler j=new caseTriggerHandler();
        j.TriggerHandlerMethod(trigger.new);
    }

}