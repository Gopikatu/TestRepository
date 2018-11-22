global class AccountSoapinfo {
     static webservice account accountinfo(){
         account accountlist=[select id,name,phone,(select id,name from contacts)
                                    from account where id = : '0017F00000TSQya'];
         return accountlist;
       
    }
}