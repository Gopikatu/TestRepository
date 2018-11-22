trigger contactTrigger on Contact (before insert) {
   public final string faxno='73589393';
    for(contact c : trigger.new){
        if(c.fax== null){
            c.Fax=label.contactFaxlabel;
            
           
        }
    }

}