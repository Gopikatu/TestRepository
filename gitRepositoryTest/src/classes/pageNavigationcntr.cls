public class pageNavigationcntr {

    public PageReference gotopage1() {
        return null;
    }


    

    public PageReference gotopage2() {
        return page.page2;
    }
    public PageReference gotopage3() {
    PageReference pref=new PageReference ('/apex/pageNavigationPage3');
    
        return pref;
    }

}