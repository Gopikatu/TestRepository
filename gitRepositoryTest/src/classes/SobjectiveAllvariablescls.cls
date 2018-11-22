public class SobjectiveAllvariablescls {
    //variable declearations
    public string name; //Primitive variable decleration
    public string phone; //primitive variable declearations
    public account accrecord; //Sobject variable
    public contact contactrecord;
    public list<account> accountlist; //collection variable
    public list<contact> contactlist;
    public set<account> accountset;
    public map<id,account> accountmap;
    public set<id> accidset;
    //constructer1 with out parameters
public  SobjectiveAllvariablescls(){
        this.name='srikanth';
        this.phone='988888';
    }//end of SobjectiveAllvariablescls()
    //constructer2 with  parameters
public SobjectiveAllvariablescls(string namevar,string phonevar){
        this.name=namevar;
        this.phone=phonevar;
    }    //end of SobjectiveAllvariablescls(string namevar,string phonevar)
public void dodml(integer count){
    integer i;
    accountlist=new list<account>();
    for(i=0; i<count; i++){
        account a=new account();
                a.name=name+'__'+i;
                a.Phone=phone+'__'+i;
        accountlist.add(a);
    }
    if(!accountlist.isEmpty()){
        database.insert(accountlist);
       getaccountinfo(accountlist);
    }
        system.debug('accountlist'+accountlist.size());
    }    //end of dodml()
public void getaccountinfo(list<account> acclist){
        accidset=new set<id>();
        for(account ac : acclist){
            accidset.add(ac.id);
             getaccountinfomap();
        }            
        system.debug('accountsetids..'+accidset);
    }   //end of getaccountinfo() 
public void getaccountinfomap(){
        accountmap=new map<id,account>([select id,name,phone from account where id =: accidset]);
  
    for(id key : accountmap.keySet()){
        system.debug('ccc'+accountmap.get(key));
    }
        
    }
}