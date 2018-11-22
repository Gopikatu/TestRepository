public class userTriggerHandler1 {
    public static list<user> inActiveuserlist;
    public static map<id,id> userresmanager;
    public static list<account> acclist;
    public static list<account> yettoupdate;
    public static void isactive(list<user> userlist, map<id,user> usermap){
        inActiveuserlist=new list<user>();
        for(user u : userlist){
            if(!u.IsActive){
                inActiveuserlist.add(u);
            }if(!inActiveuserlist.isempty()){
                userresmanager=new map<id,id>();
                for(user us : inActiveuserlist){
                    userresmanager.put(us.id,us.ManagerId);
                }if(!userresmanager.isEmpty()){
                    dodml(userresmanager);
                }
            }
        }
        
    }
    @future
    public static void dodml(map<id,id> userresmanagerid){
        acclist=[select id,ownerid,name from account where ownerid =: userresmanagerid.keySet()];
        yettoupdate=new list<account>();
        if(!acclist.isempty()){
            for(account a : acclist){
                a.OwnerId=userresmanagerid.get(a.OwnerId);
                yettoupdate.add(a);
            }if(!yettoupdate.isempty()){
                database.update(yettoupdate);
                sendemailconformation(userresmanagerid);
            }
        }
    }
    public static void sendemailconformation(map<id,id> mangeremaildetails){
        list<user> udetails=new list<user>();
        list<string> emaillist=new list<string>();
        list<user> manderdetails=[select userName,id,manager.name,manager.Id, 
                                  manager.profile.name,manager.email from user where managerid =: mangeremaildetails.values()];
        for(user s : manderdetails){
            emaillist.add(s.manager.Email);
            udetails.add(s);
        }
        if(!emaillist.isempty()){
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            
            mail.setToAddresses(emaillist);
            mail.setSubject('user has been deactivated'+manderdetails);
            mail.setPlainTextBody
                ('user has been deactivated by'+udetails+'account details'+yettoupdate );
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            
        }
        
    }
    
}