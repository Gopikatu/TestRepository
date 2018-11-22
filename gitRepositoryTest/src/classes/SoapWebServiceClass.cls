global class SoapWebServiceClass {
    webservice static list<contact> contactinfo(string phonevar){
        list<contact> clist=[select id,name,phone from contact where phone =: phonevar];
        return clist;
    }

}