trigger TriggercontexbehaviorOptTrigger on Opportunity (before insert,before update,
                                                        before delete,after insert,after update,after delete,after undelete) {
                                                            if(trigger.isbefore){
                                                                 system.debug('before trigger.new'+trigger.new);
                                                                 system.debug('before trigger.newmap'+trigger.newmap);
                                                                 system.debug('before trigger.old'+trigger.old);
                                                                 system.debug('before trigger.oldmap'+trigger.oldmap);
                                                                
                                                            } else if(trigger.isafter){
                                                                 system.debug('after trigger.new'+trigger.new);
                                                                 system.debug('after trigger.newmap'+trigger.newmap);
                                                                 system.debug('after trigger.old'+trigger.old);
                                                                 system.debug('after trigger.oldmap'+trigger.oldmap);
                                                                
                                                                
                                                            }       

}