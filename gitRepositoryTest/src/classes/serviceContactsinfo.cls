//service provider...
@RestResource(urlmapping='/ContactsInfo/*')
global class  serviceContactsinfo {
    
        
    
    @httpget
    global static list<contact> ContactsInfoProvider(){
        restrequest req=restcontext.request;
        restresponse resp=restcontext.response;
        string phonestring=req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        list<contact> acc=[select id,name,phone from contact where phone = : phonestring];
        system.debug('acc'+acc);
        return acc;
    }
}