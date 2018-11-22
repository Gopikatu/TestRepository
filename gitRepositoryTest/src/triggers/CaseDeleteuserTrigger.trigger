trigger CaseDeleteuserTrigger on Case (before delete,after delete) {
    CaseDeleteuserTriggerHandlercls obj=new CaseDeleteuserTriggerHandlercls();
    if(trigger.isbefore&& trigger.isdelete){
        obj.triggerhandeler(Trigger.old);
    }else if(trigger.isafter&& trigger.isdelete){
        obj.sendingemail(Trigger.old);
        }
 }