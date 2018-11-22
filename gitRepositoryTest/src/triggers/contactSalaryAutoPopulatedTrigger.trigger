trigger contactSalaryAutoPopulatedTrigger on Contact (after insert,after update,after delete,after undelete) {
    contactSalaryAutoPopulatedTriggerHandler obj=new contactSalaryAutoPopulatedTriggerHandler();
    if(trigger.isafter&& trigger.isinsert){
        obj.method1(trigger.newmap);
    }
    if(trigger.isafter&& trigger.isupdate){
        obj.afterupdate(trigger.new);
    }
    if(trigger.isafter&& trigger.isdelete){
        obj.afterDelete(trigger.old);
        
    }
    if(trigger.isafter&& trigger.isundelete){
        obj.afterUnDel(trigger.new);
    }

}