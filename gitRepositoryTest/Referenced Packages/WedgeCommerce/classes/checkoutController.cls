/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class checkoutController extends wk_wedge.wedgesiteTemplateContoller {
    global String baseUrl {
        get;
        set;
    }
    global String checkoutDotComMode {
        get;
        set;
    }
    global Map<String,Boolean> couponProds {
        get;
        set;
    }
    global String email {
        get;
        set;
    }
    global String FailUrl {
        get;
        set;
    }
    global String FailUrlSkrill {
        get;
        set;
    }
    global String fname {
        get;
        set;
    }
    global Boolean fullwalletPay {
        get;
        set;
    }
    global Boolean guest {
        get;
        set;
    }
    global String mode {
        get;
        set;
    }
    global String ordercomments {
        get;
        set;
    }
    global String orderid {
        get;
        set;
    }
    global String PaymentId {
        get;
        set;
    }
    global String Paymentkey {
        get;
        set;
    }
    global String Paymentsalt {
        get;
        set;
    }
    global String Paymenttype {
        get;
        set;
    }
    global List<wk_wedge.checkoutController.paymentOptions> payMethods;
    global String phoneNum {
        get;
        set;
    }
    global Decimal shippingcharge {
        get;
        set;
    }
    global Boolean shippingEnabled {
        get;
        set;
    }
    global String shippingId {
        get;
        set;
    }
    global wk_wedge__StoreAdmin__c storeAdmin {
        get;
        set;
    }
    global String stripetoken {
        get;
        set;
    }
    global String SuccesUrl {
        get;
        set;
    }
    global String SuccesUrlSkrill {
        get;
        set;
    }
    global Decimal taxcharge {
        get;
        set;
    }
    global String taxId {
        get;
        set;
    }
    global Boolean walletReduction {
        get;
        set;
    }
    global checkoutController() {

    }
    @RemoteAction
    global static Boolean IsSkrillCurrencySupported(String cur) {
        return null;
    }
    global wk_wedge.checkoutController.couponDetails ValidateCoupon(wk_wedge__Coupon__c coup) {
        return null;
    }
    global System.PageReference applyPromoNew() {
        return null;
    }
    global void applypromo() {

    }
    @RemoteAction
    global static String authorizepayments(String params) {
        return null;
    }
    @RemoteAction
    global static String bluepayPayments(String params) {
        return null;
    }
    global void changeMode() {

    }
    @RemoteAction
    global static String checkoutDotComPayment(String params) {
        return null;
    }
    global void clearCoupon() {

    }
    global System.PageReference clearCouponNew() {
        return null;
    }
    global void createAnOrder() {

    }
    global wk_wedge.checkoutController.coupinfo getCouponInfo() {
        return null;
    }
    global String getDefaultImageId() {
        return null;
    }
    global Decimal getExchangeRate() {
        return null;
    }
    global Decimal getGrandtotal() {
        return null;
    }
    global Boolean getIsINR() {
        return null;
    }
    global Boolean getIsWallet() {
        return null;
    }
    global Decimal getProductSubTotal() {
        return null;
    }
    global String getPromoerror() {
        return null;
    }
    global List<wk_wedge.checkoutController.taxoptions> getTaxRates() {
        return null;
    }
    global User getUsr() {
        return null;
    }
    global User getUsr2() {
        return null;
    }
    global Decimal getWalletCash() {
        return null;
    }
    global wk_wedge.OrderUtill.Addresses getbillingaddress() {
        return null;
    }
    global List<System.SelectOption> getcountrylist() {
        return null;
    }
    global Boolean getdiffshipping() {
        return null;
    }
    global List<wk_wedge__Cart__c> getorderProduct() {
        return null;
    }
    global List<wk_wedge.checkoutController.paymentOptions> getpayementMethods() {
        return null;
    }
    global String getpromocode() {
        return null;
    }
    global wk_wedge.OrderUtill.Addresses getshippingaddress() {
        return null;
    }
    global List<wk_wedge.checkoutController.shippingoptions> getshippingoptions() {
        return null;
    }
    global String getuserIP() {
        return null;
    }
    global Boolean getuserregenable() {
        return null;
    }
    @RemoteAction
    global static Boolean isCheckoutDotComCurrencySupported(String cur) {
        return null;
    }
    @RemoteAction
    global static Boolean isCurrencySupported(String cur) {
        return null;
    }
    global void orderdetails() {

    }
    global void preparecheckout() {

    }
    @RemoteAction
    global static String razorpayCapturepayment(String params) {
        return null;
    }
    global System.PageReference redirectorder() {
        return null;
    }
    global System.PageReference redirectorderNew() {
        return null;
    }
    global void setUsr(User value) {

    }
    global void setUsr2(User value) {

    }
    global void setbillingaddress(wk_wedge.OrderUtill.Addresses value) {

    }
    global void setdiffshipping(Boolean value) {

    }
    global void setpromocode(String value) {

    }
    global void setshippingaddress(wk_wedge.OrderUtill.Addresses value) {

    }
    @RemoteAction
    global static String stripeConfig(String ids) {
        return null;
    }
    global List<wk_wedge__Shipping_Method__c> updateMetaForShippingMethod(List<wk_wedge__Shipping_Method__c> pan) {
        return null;
    }
    global List<wk_wedge__Taxes__c> updateMetaForTaxes(List<wk_wedge__Taxes__c> pan) {
        return null;
    }
global class coupinfo {
    global String code {
        get;
        set;
    }
    global String couponid {
        get;
        set;
    }
    global Decimal discount {
        get;
        set;
    }
    global coupinfo(String cCode, String coid, Decimal disc) {

    }
}
global class couponDetails {
    global Id couponId {
        get;
        set;
    }
    global Boolean expired {
        get;
        set;
    }
    global Decimal totalcost {
        get;
        set;
    }
    global String usercontextId {
        get;
        set;
    }
    global couponDetails(String coupId, Decimal total, String userId) {

    }
}
global class couponUtil {
    global couponUtil() {

    }
}
global class paymentOptions {
    global String descr {
        get;
        set;
    }
    global String key {
        get;
        set;
    }
    global String name {
        get;
        set;
    }
    global String payparam1 {
        get;
        set;
    }
    global String payparam2 {
        get;
        set;
    }
    global String payparam3 {
        get;
        set;
    }
    global String salt {
        get;
        set;
    }
    global String types {
        get;
        set;
    }
    global String val {
        get;
        set;
    }
    global paymentOptions(String params) {

    }
    global paymentOptions(String v, String n, String t, String d, String k, String s) {

    }
}
global class shippingoptions {
    global String name {
        get;
        set;
    }
    global Decimal price {
        get;
        set;
    }
    global String shipid {
        get;
        set;
    }
    global shippingoptions(String n, String shid, Decimal p) {

    }
}
global class taxoptions {
    global String name {
        get;
        set;
    }
    global Decimal price {
        get;
        set;
    }
    global String taxid {
        get;
        set;
    }
    global String taxInclude {
        get;
        set;
    }
    global taxoptions(String n, String shid, Decimal p, String incl) {

    }
}
}
