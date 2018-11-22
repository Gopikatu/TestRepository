public class popup {
    public list<account> acc{get;set;}
public boolean displayPopup {get; set;}
public boolean displayinnerPopup {get; set;}
public void closePopup() {
displayPopup = false;
displayinnerPopup=true;
}
public void showPopup() {
    acc=[select id, name,phone,fax from account LIMIT 20];
    //system.debug('acc'+acc.size());
displayPopup = true;
displayinnerPopup =false;

}
public void showinnerpopup() {
displayinnerPopup = true;
}
public void closeinnerpopup() {
displayinnerPopup =false;
}
}