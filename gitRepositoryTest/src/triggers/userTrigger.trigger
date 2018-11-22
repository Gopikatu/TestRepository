trigger userTrigger on User (after update) {
    if(trigger.isafter&& trigger.isupdate){
                 userTriggerHandler.isactive(trigger.new,trigger.newmap);
    }
}