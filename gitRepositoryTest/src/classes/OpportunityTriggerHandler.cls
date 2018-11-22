public class OpportunityTriggerHandler {
    public  map<id,string> mapmap;
    public list<id> ownweridlist;
    public list<opportunity> opplist2;
    public void auitharizationcheck(list<opportunity> opplist){
        for(Opportunity opp : opplist){
            string curreuntloginuserid=userinfo.getUserId();
            string authuserid=label.opportunityautho;
            if(curreuntloginuserid != authuserid){
                opp.adderror('your are not an authorised user to delete this....');
                
            }
          //  system.debug('curreuntloginuserid...'+curreuntloginuserid);
            //system.debug('authuserid...'+authuserid);
        }
        
    }
    public void sendconformationemail(list<opportunity> opplist2){
        
        ownweridlist=new list<id>();
        for(opportunity em : opplist2){
               ownweridlist.add(em.OwnerId);
        }
            //system.debug('useremaillist...'+useremaillist);
           // system.debug('opplist2...'+opplist2);
             if(!ownweridlist.isempty()){
                list<user> userlist=[select id,email from user where id =: ownweridlist];
                 list<string> uemaillist=new list<string>();
                 for(user u : userlist){
                     uemaillist.add(u.email);
                 }
                 if(!uemaillist.isempty()){
                     sendemail(uemaillist,opplist2);
                 }
                 system.debug('uemaillist...'+uemaillist);
        }
        }
    
    public void sendemail(list<string> toaddress,list<opportunity> opplist2){
        system.debug('toaddress'+toaddress);
               Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
               mail.setToAddresses(toaddress);
               mail.setSubject('oppertunity has been sucussfully deleted' );
               mail.setPlainTextBody
               ('deleted oppertunity details '+opplist2);
               Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            
        
         
    }
    
    }