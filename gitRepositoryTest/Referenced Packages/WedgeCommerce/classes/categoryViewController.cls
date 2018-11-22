/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class categoryViewController {
    global String prodId {
        get;
        set;
    }
    global String prodimg {
        get;
        set;
    }
    global String prodName {
        get;
        set;
    }
    global Decimal prodprice {
        get;
        set;
    }
    global static Map<Id,Product2> productsMap;
    global static Set<Id> wishlistProductIds {
        get;
        set;
    }
    global categoryViewController() {

    }
    global void addtocart() {

    }
    global void addtowishlist() {

    }
    global wk_wedge__Categories__c getCategory() {
        return null;
    }
    global String getCurrencyCode() {
        return null;
    }
    global String getCurrsymbol() {
        return null;
    }
    global Integer getMaxPrice() {
        return null;
    }
    @RemoteAction
    global static String getProduct(String filterQuery, String sortdir, String c_id, String selectedCurrency) {
        return null;
    }
    @RemoteAction
    global static String getProducts(String filterQuery, String sortdir, String c_id) {
        return null;
    }
    global String getSelectedLanguage() {
        return null;
    }
    global List<wk_wedge__Categories__c> getSubCategories() {
        return null;
    }
    global Boolean getViewRender() {
        return null;
    }
    global Map<String,wk_wedge__Categories__c> getbreadcrumbs() {
        return null;
    }
    global String getcontextId() {
        return null;
    }
    global Boolean getuserregenbale() {
        return null;
    }
    global static Decimal parseResult(System.JSONParser parser) {
        return null;
    }
    global void qViewopen() {

    }
    global static Map<Id,Product2> updateMetaForLanguage(Map<Id,Product2> pan, String selectedlanguage) {
        return null;
    }
    global Map<String,wk_wedge__Categories__c> updateMetaForLanguage(Map<String,wk_wedge__Categories__c> pan) {
        return null;
    }
    global static void wishlistProducts(String usercontextid) {

    }
global class remoteParams {
    global String contextId {
        get;
        set;
    }
    global String selectedCurrency {
        get;
        set;
    }
    global String selectedLanguage {
        get;
        set;
    }
    global remoteParams() {

    }
}
}
