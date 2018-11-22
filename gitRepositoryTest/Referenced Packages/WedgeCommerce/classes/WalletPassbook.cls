/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class WalletPassbook extends wk_wedge.wedgesiteTemplateContoller {
    global String currentid;
    global Integer currentlimit {
        get;
        set;
    }
    global Integer pageno {
        get;
        set;
    }
    global List<wk_wedge__Wallet_Transaction__c> recordList {
        get;
        set;
    }
    global Integer totalpage {
        get;
        set;
    }
    global Integer totalrecords {
        get;
        set;
    }
    global WalletPassbook() {

    }
    global void fetchLessRecordsById() {

    }
    global void fetchMoreRecords() {

    }
    global void fetchagain() {

    }
    global void fetchlastpage() {

    }
    global void fetchlessrecords() {

    }
    global void fetchtotalrecordnumber() {

    }
    global List<System.SelectOption> getPerpageValues() {
        return null;
    }
}
