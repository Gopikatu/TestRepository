public class contactSalaryAutoPopulatedTriggerHandler {
       public decimal totalsum=0.0;
       public void method1(map<id,contact> freshContactdataMap){
        map<id,string> AresContact=new map<id,string>();
        for(contact cid : freshContactdataMap.values()){
            AresContact.put(cid.id,cid.AccountId);
        }
        list<contact> clist=[select id,salary__c,accountid from contact 
                             where salary__c != null and accountid=: AresContact.values()];
        system.debug('clistttttt'+clist.size());
        system.debug('clistttttt'+clist);
       map<string,contact> conmap=new map<string,contact>();
        list<decimal> csalarylist=new list<decimal>();
        for(contact c : clist ){
            conmap.put(c.accountid,c);
            csalarylist.add(c.Salary__c);
        }if(csalarylist != null){
            for(integer i=0; i<csalarylist.size(); i++){
                totalsum=totalsum + csalarylist[i];
            }if(totalsum != null){
                list<account> acclist=[select id,Total_Contacts_Salary__c from account where id=: conmap.keyset()];
                list<account> acctoUpdate=new list<account>();
                for(account ac : acclist){
                      ac.Total_Contacts_Salary__c=totalsum;
                    acctoUpdate.add(ac);
                } if(!acctoUpdate.isempty()){
                    database.update(acctoUpdate);
                }
            }
        }
    }
    public void afterupdate(list<contact> freshUpdateConlist){
        map<id,string> UPdatedcondetailmap=new map<id,string>();
        for(contact co : freshUpdateConlist){
            UPdatedcondetailmap.put(co.id,co.AccountId);
        }
        list<contact> allconsAfterupdate=[select id,salary__c,accountid from contact
                                          where salary__c != null and accountid =: UPdatedcondetailmap.values()];
       // system.debug('allconsAfterupdate....'+allconsAfterupdate);
       // system.debug('allconsAfterupdate....'+allconsAfterupdate.size());
       list<decimal> upsalary=new list<decimal>();
        for(contact up : allconsAfterupdate){
            upsalary.add(up.Salary__c);
        }if(!upsalary.isempty()){
            for(integer i=0; i<allconsAfterupdate.size(); i++){
                totalsum=totalsum+upsalary[i];
                system.debug(totalsum);
            }if(totalsum != null){
                list<account> alist=[select id,Total_Contacts_Salary__c from account 
                                     where id =: UPdatedcondetailmap.values()];
                system.debug('alist..'+alist);
               list<account> ToUpdate=new list<account>();
                system.debug('update record'+Toupdate);
                for(account upAccount : alist){
                    upAccount.Total_Contacts_Salary__c=totalsum;
                    ToUpdate.add(upAccount);
                }if(ToUpdate != null){
                    database.update(ToUpdate);
                }
            }
        }
    }//end ou afterupdate(list<contact> freshUpdateConlist) method...
    public void afterDelete(list<contact> oldDate){
        //system.debug('oldDate'+oldDate);
        //system.debug('oldDate'+oldDate.size());
        map<id,string> delConRespAccount=new map<id,string>();
          //system.debug('delConRespAccount'+delConRespAccount.values());
          //system.debug('delConRespAccount'+delConRespAccount.size());
        for(contact del : oldDate){
            delConRespAccount.put(del.id,del.AccountId);
        }
        list<contact> CrespA=[select id,accountid,salary__c from contact where accountid =: delConRespAccount.values()];
       // system.debug('CrespA'+CrespA);
        //system.debug('CrespA'+CrespA.size());
        if(!CrespA.isempty()){
            list<decimal> remaingcontactsAdel=new list<decimal>();
        for(contact cn : CrespA){
            remaingcontactsAdel.add(cn.Salary__c);
        }if(!remaingcontactsAdel.isempty()){
            for(integer i=0; i<remaingcontactsAdel.size(); i++){
                totalsum=totalsum+remaingcontactsAdel[i];
            } 
                    list<account> acclistDel=[select id,Total_Contacts_Salary__c from account 
                                              where id =: delConRespAccount.values()];
                    list<account> toupdateAdelete=new list<account>();
                system.debug('toupdateAdelete'+toupdateAdelete);
                system.debug('toupdateAdelete'+toupdateAdelete.size());
                    for(account ad : acclistDel){
                        ad.Total_Contacts_Salary__c=totalsum;
                        toupdateAdelete.add(ad);
                    } system.debug('total;sum'+totalsum);
                if(!toupdateAdelete.isempty()){
                    database.update(toupdateAdelete);
                }
        }
    }
    }
    public void afterUnDel(list<contact> undoContactDatamap){
        system.debug('undoContactDatamap'+undoContactDatamap);
        system.debug('undoContactDatamap'+undoContactDatamap.size());
        set<string> accountidset=new set<string>();
        for(contact c : undoContactDatamap){
            accountidset.add(c.AccountId);
        }system.debug('accountidset'+accountidset);
        system.debug('accountidset'+accountidset.size());
            list<contact> conlist=[select accountid,salary__c from contact where accountid =: accountidset];
        map<string,decimal> salary=new map<string,decimal>();
        for(contact cn : conlist){
            salary.put(cn.AccountId,cn.Salary__c);
        }
                                

        }
        
        
       
}