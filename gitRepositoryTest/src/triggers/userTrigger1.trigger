trigger userTrigger1 on User (after update) {
    if(trigger.isafter&& trigger.isupdate){
                 userTriggerHandler1.isactive(trigger.new,trigger.newmap);
    }
}