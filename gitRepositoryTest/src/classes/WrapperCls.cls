public class WrapperCls {
    list<account> alist=new list<account>();
    list<contact> clist=new list<contact>();
    list<wrapper> wrap=new list<wrapper>(); 
    
    public list<wrapper> getwrapperstring(){
        alist=[select name,phone,fax from account limit 20];
        integer alistsize=alist.size();
        clist=[select name,email from contact];
        for(integer i=0;i<alistsize;i++){
            wrap.add(new wrapper(alist[i].name,alist[i].phone,alist[i].fax,clist[i].name,clist[i].email));
        }
        return wrap;
    }
    public class wrapper{
        public string accname{get;set;}
        public string accphone{get;set;}
        public string accfax{get;set;}
        public string cName{get;set;}
        public string cEmail{get;set;}
        public wrapper(string accname,string accphone,string accfax,string cName,string cEmail){
            this.accname=accname;
            this.accphone=accphone;
            this.accfax=accfax;
            this.cName=cName;
            this.cEmail=cEmail;
            
        }
    }
    
}