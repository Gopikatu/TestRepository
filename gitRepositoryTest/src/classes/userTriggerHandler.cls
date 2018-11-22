public class userTriggerHandler {
    public static list<user> inActiveuserlist;
    public static map<id,id> userresmanager;
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
                  dodml();
                }
            }
        }
        
    }
    @future
    public static void dodml(){
        list<account> acclist=[select id,ownerid,name from account where ownerid =: userresmanager.keySet()];
        list<account> yettoupdate=new list<account>();
        if(!acclist.isempty()){
            for(account a : acclist){
                  a.OwnerId=userresmanager.get(a.OwnerId);
                yettoupdate.add(a);
            }if(!yettoupdate.isempty()){
                database.update(yettoupdate);
            }
        }
    }

}