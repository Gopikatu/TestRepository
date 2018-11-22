/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class wedgesiteTemplateContoller extends wk_wedge.wedgeSiteloginController {
    global static Map<Id,wk_wedge__Categories__c> categorymap;
    global String categoryQuery {
        get;
        set;
    }
    global String catMenuType {
        get;
        set;
    }
    global String cost {
        get;
        set;
    }
    global String costTemp {
        get;
        set;
    }
    global Map<String,String> CurrCodeSymMap;
    global List<String> currencylist;
    global String currentPage {
        get;
        set;
    }
    global Boolean DynamicValues;
    global String emailupdates {
        get;
        set;
    }
    global Boolean enableMulticurrency {
        get;
        set;
    }
    global Boolean enableMultilanguage {
        get;
        set;
    }
    global static Boolean err;
    global Decimal exchangeRate {
        get;
        set;
    }
    global Boolean fbanalytic {
        get;
        set;
    }
    global String fbdata {
        get;
        set;
    }
    global String footertextval;
    global Boolean googleanalytic {
        get;
        set;
    }
    global String googledata {
        get;
        set;
    }
    global List<wk_wedge__Language__c> lang_Array;
    global Map<String,String> lang_map;
    global static Boolean makeanofferview {
        get;
        set;
    }
    global static List<String> notices;
    global String orgCurrency;
    global String page_lang {
        get;
        set;
    }
    global static String pProductid;
    global static String pProductImage;
    global static String pProductName;
    global static String pProductOption;
    global static Decimal pProductprice;
    global static Integer pProductQuantity;
    global Product2 pro;
    global List<wk_wedge__Product_Option__c> prodOptList {
        get;
        set;
    }
    global String productOpt {
        get;
        set;
    }
    global List<wk_wedge__Product_Option__c> productOptions {
        get;
        set;
    }
    global static Boolean qcartView;
    global static Boolean qproductView;
    global String quoteInfo {
        get;
        set;
    }
    global static Boolean qwishlist;
    global List<wk_wedge__Request_Quote_Custom_Field__c> requestQuoteCustomField {
        get;
        set;
    }
    global String selectedcurrency {
        get;
        set;
    }
    global String selectedLanguage {
        get;
        set;
    }
    global static Boolean specifyOption {
        get;
        set;
    }
    global static wk_wedge__StoreAdmin__c storeAd {
        get;
        set;
    }
    global static Boolean success;
    global static wk_wedge__Templates__c template;
    global System.PageReference thispage;
    global static Id TNCId;
    global static Boolean TnCView;
    global String url {
        get;
        set;
    }
    global String variantDescription {
        get;
        set;
    }
    global String variantDescriptionTemp {
        get;
        set;
    }
    global wk_wedge__Wallet__c Wallet {
        get;
        set;
    }
    global Decimal WalletAmount {
        get;
        set;
    }
    global Set<Id> wishlistProductIds {
        get;
        set;
    }
    global wedgesiteTemplateContoller() {

    }
    global virtual void ViewMakeAnOfferPopup() {

    }
    global virtual void ViewSpecifyOptionPopup() {

    }
    global void addToThisCart() {

    }
    global void addToThiswishlist() {

    }
    global virtual System.PageReference changeLang() {
        return null;
    }
    global virtual void createWallet() {

    }
    global virtual void createquote() {

    }
    global virtual System.PageReference dummymethod() {
        return null;
    }
    global virtual List<System.SelectOption> getActivatedLanguage() {
        return null;
    }
    global Decimal getCarttotal() {
        return null;
    }
    global String getCategoriesforDrop() {
        return null;
    }
    global Map<String,Boolean> getComponentstatus() {
        return null;
    }
    global virtual List<System.SelectOption> getCurrencyList() {
        return null;
    }
    global String getCurrsymbol() {
        return null;
    }
    global virtual Boolean getGuestUser() {
        return null;
    }
    global String getJsonString() {
        return null;
    }
    global String getLogo() {
        return null;
    }
    global String getMenuLinksJson() {
        return null;
    }
    global Product2 getQproductdetails() {
        return null;
    }
    global Component.apex.outputpanel getTNCarticle() {
        return null;
    }
    global Integer getTimeoutVal() {
        return null;
    }
    global Integer getTimeoutValue() {
        return null;
    }
    global Boolean getTnCView() {
        return null;
    }
    global Boolean getTncViewAvailable() {
        return null;
    }
    global virtual String getactivateUserRegKey() {
        return null;
    }
    global virtual String getactivatepushnotificationkey() {
        return null;
    }
    global String getallFooterLinks() {
        return null;
    }
    global Decimal getcartitems() {
        return null;
    }
    global String getcategoryKeyword() {
        return null;
    }
    global String getcontextid() {
        return null;
    }
    global Boolean geterr() {
        return null;
    }
    global Component.apex.outputpanel getfooterDetails(List<wk_wedge__Template_Menu_Links__c> li) {
        return null;
    }
    global Component.apex.outputpanel getfooterDetailscol1() {
        return null;
    }
    global Component.apex.outputpanel getfooterDetailscol2() {
        return null;
    }
    global Component.apex.outputpanel getfooterDetailscol3() {
        return null;
    }
    global Component.apex.outputpanel getfooterDetailscol4() {
        return null;
    }
    global Component.apex.outputtext getfootertextval() {
        return null;
    }
    global List<String> getnotices() {
        return null;
    }
    global String getpProductName() {
        return null;
    }
    global Integer getpProductQuantity() {
        return null;
    }
    global String getpProductimage() {
        return null;
    }
    global Decimal getpProductprice() {
        return null;
    }
    global Boolean getqcartView() {
        return null;
    }
    global Boolean getqproductView() {
        return null;
    }
    global Integer getquantity() {
        return null;
    }
    global String getqueryKeyword() {
        return null;
    }
    global Boolean getqwishlist() {
        return null;
    }
    global List<wk_wedge__Template_Social_Media__c> getsocialMedia() {
        return null;
    }
    global Boolean getsuccess() {
        return null;
    }
    global virtual Boolean getuserregenbale() {
        return null;
    }
    global Integer getwishlistcount() {
        return null;
    }
    global virtual Boolean getwishlistenbale() {
        return null;
    }
    global virtual Decimal parseResult(System.JSONParser parser) {
        return null;
    }
    global virtual System.PageReference redirectWishlist() {
        return null;
    }
    global virtual System.PageReference redirectcart() {
        return null;
    }
    global System.PageReference search() {
        return null;
    }
    global void setquantity(Integer value) {

    }
    global void setqueryKeyword(String value) {

    }
    global void tnCEnable() {

    }
    global virtual List<wk_wedge__Request_Quote_Custom_Field__c> updateMetaForCustomFields(List<wk_wedge__Request_Quote_Custom_Field__c> pan) {
        return null;
    }
    global virtual wk_wedge__Template_Footer_Text__c updateMetaForFooterText(wk_wedge__Template_Footer_Text__c pan) {
        return null;
    }
    global virtual List<Product2> updateMetaForLanguage(List<Product2> pan) {
        return null;
    }
    global virtual List<wk_wedge__Categories__c> updateMetaForLanguage(List<wk_wedge__Categories__c> pan) {
        return null;
    }
    global virtual List<wk_wedge__Template_Menu_Links__c> updateMetaForMenulinks(List<wk_wedge__Template_Menu_Links__c> pan) {
        return null;
    }
}
