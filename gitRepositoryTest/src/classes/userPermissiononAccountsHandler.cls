public class userPermissiononAccountsHandler {     
    public void handler(list<account> alist){
        list<account> acclist=new list<account>();
        system.debug('accountcount'+acclist);
        for(account a : alist){
            acclist.add(a);
        }
        String cuser=userInfo.getUserId();
        user us=[select id,name from user where Id =: cuser];
        system.debug('user'+us);
        if(us != null){
            delete acclist;
        }
        
    }

}