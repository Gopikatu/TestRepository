public class caseTriggerHandler {
    public list<string> cemaillist;
    public void TriggerHandlerMethod(list<case> caselist){
        system.debug('caselist'+caselist);
        cemaillist=new list<string>();
        
        for(case c : caselist){
            cemaillist.add(c.ContactEmail);
            system.debug('cemaillist'+c.ContactEmail);
        }
        system.debug('cemaillist'+cemaillist);
        
        if(!cemaillist.isempty()){
            // Send an email to the Apex job's submitter notifying of job completion.
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            // String[] toAddresses = new String[]
            
            mail.setToAddresses(cemaillist);
            mail.setSubject('case has been created');
            mail.setPlainTextBody
                ('with folliwing details'+caselist);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
    }
    
}