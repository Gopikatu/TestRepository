global class AccountWebService {
     static webservice account showallaccounts(string name){
        account acc=[select id,name,phone from account where name =: name];
         return acc;
    }
}