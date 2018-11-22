public class serializeTest {
    public serializeTest(){
        account acclist=[select id,name,phone,(select id,phone from contacts) from account where name = 'test'];
        system.debug('acclist'+acclist);
    String JSONString = JSON.serialize(acclist);
       system.debug('JSONString'+JSONString);
         account deserializeres=(account) json.deserializeStrict(JSONString, account.class);
        system.debug('deserializeres'+deserializeres.contacts.size());
    }

}