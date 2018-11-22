@restresource(urlmapping='/v2/custemorservice/*')
global class restapexintegration {
    global class accountwrapper{
        public  string custemername{get;set;}
        public string accountnumber{get;set;}
        public list<contatswrapper> pcontactlist{get;set;}
    }
    global class contatswrapper{
        public string pcontactperson{get;set;}
        
    }
    
    @httpget
    global static accountwrapper accountinfo(){
       restrequest req=restcontext.request;
       restresponse resp=restcontext.response;
        String accid = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
       account acc=[select id,name,phone,accountnumber,
                    (select id,name from contacts) from account where id =: accid];
        accountwrapper awpr=new accountwrapper();
        awpr.custemername=acc.Name;
        awpr.accountnumber=acc.AccountNumber;
        list<contact> conlist=acc.contacts;
        list<contatswrapper> contactwrlist=new list<contatswrapper>();
        for(contact c : conlist){
            contatswrapper arp=new contatswrapper();
            arp.pcontactperson=c.name;
            contactwrlist.add(arp);
        }
        awpr.pcontactlist=contactwrlist;
        return awpr;
    } 
    @httppost
    global static void insertaccount(){
        account a=new account();
        a.name='name';
        a.AccountNumber='2025821';
        a.Phone='123456';
        insert a;
    }
     @httpdelete
    global static void deleteaccountinfo(){
       restrequest req=restcontext.request;
       restresponse resp=restcontext.response;
        String accid = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
       account acc=[select id,name,phone,accountnumber,
                    (select id,lastname from contacts) from account where id =: accid];
        delete acc;
    }
    

}