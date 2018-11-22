public class CaseDeleteuserTriggerHandlercls {
    public  void triggerhandeler(list<case> caselist){
         For(case c :caselist){
        string userid=userinfo.getUserId();
        string authuserid=label.caseauthorizeduser;
                //system.debug('........'+userid);
                //system.debug('........'+authuserid);
            if(userid != authuserid){
            c.adderror(label.caseerrormesage);
        }
      }
   }
    public void sendingemail(list<case> emailcaselist){
         map<id,string> emailmap=new map<id,string>();
        for(case em : emailcaselist){
                 emailmap.put(em.Id, em.ContactEmail);
            list<string> emaillist=new list<string>();
            for(string values : emailmap.values()){
                emaillist.add(values);
            } Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                   mail.setToAddresses(emaillist);
                    mail.setSubject('case has been deleted ' + em.CaseNumber);
                   mail.setPlainTextBody
                   ('case id' + em.Id+
                   ' status'+ em.Status+ ' case owner'+em.OwnerId+'parent id'+em.ParentId);
                   Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        }
    }

}