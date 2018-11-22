public class tranInsertCls {
    public void dotranInsertCls(integer count)
    { 
        contact con=[select id,lastname,phone from contact where phone='123456789'];
        //account acc=[select id,name from account where name='gopi'];
        list<Transation__c> transctionlist=new  list<Transation__c>();
        for(integer i=0; i<count; i++){
            Transation__c t=new Transation__c();
            t.Transcation_date_and_time__c=system.today();
            t.Ammount_of_Transcation__c=1431;
            t.Transcation_Status__c='success';
            t.contact__c=con.Phone;
            t.accountname__c='name';    
            transctionlist.add(t);
        }
        insert transctionlist;
        system.debug('tranInsertCls...'+transctionlist);
    }
}