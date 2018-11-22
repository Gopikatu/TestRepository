public class CandidateTriggerHandler {
    list<Candidate__c> canlist;
    public list<Candidate__c> respDetails;
    public void hndler(list<Candidate__c> candidateList){
        map<id,string> emailmap=new map<id,string>();
        for(Candidate__c p : candidateList){
            if(p.Id!=null){
                canlist=[select id,Email__c,DOB__c,Phone_No__c from Candidate__c where id=: p.id];
                for(Candidate__c c : canlist){
                    emailmap.put(c.id,c.Email__c);
                }
                
            }
            
        }
        list<string> emailTOAddress=emailmap.values();
        // Map<string,Candidate__c> cdetails=new map<string,Candidate__c>();
        for(string em : emailTOAddress){
            //cdetails.put(em.Email__c,em);
        }
        system.debug('emailRTo'+emailTOAddress);
        if(!emailTOAddress.isempty()){
            // Send an email to the Apex job's submitter notifying of job completion.
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();            
            mail.setToAddresses(emailTOAddress);
            for(string em : emailTOAddress){
                respDetails=[select id,Email__c,Phone_No__c,DOB__c from Candidate__c where Email__c =: em];
            }
            mail.setSubject('new candidate inserted  ');
            mail.setPlainTextBody('inserted candidate details'+respDetails);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
        
    }
    
}