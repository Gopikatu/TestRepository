global class contacttWebService {
     static webservice contact contactsinfo(string name){
        contact con=[select id,lastname from contact where lastname =: name];
         return con;
    }
}