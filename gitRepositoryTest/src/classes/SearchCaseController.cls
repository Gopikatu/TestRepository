public class SearchCaseController {
    public boolean iscasefound{get;set;}
    public case caserecord { get; set; }
    public String casenumberinput { get; set; }
    public void searchmethod() {
        try{
            caserecord=new case();
            caserecord=[SELECT Id, IsDeleted, CaseNumber, ContactId, AccountId, Status, 
        Origin, Subject, Priority, ClosedDate, CreatedDate, CreatedById,
         ContactMobile, Product__c FROM Case where caseNumber= : casenumberinput ];
            if(caserecord!=null){
                iscasefound=true;
            }else{
                 apexpages.addMessage(new ApexPages.message(apexpages.Severity.ERROR,'case not exist..'));
            iscasefound=false;
            }
        }catch(exception e){
           
            
        }
        
         
    }


}