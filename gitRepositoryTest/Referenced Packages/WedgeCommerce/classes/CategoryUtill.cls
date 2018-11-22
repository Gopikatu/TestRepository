/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CategoryUtill {
    global static Map<Id,AggregateResult> productsCatMap;
    global CategoryUtill() {

    }
    global static wk_wedge.CategoryUtill.RoleNodeWrapper createNode(Id objId) {
        return null;
    }
    global static List<User> getAllSubordinates(Id userId) {
        return null;
    }
    global static wk_wedge.CategoryUtill.RoleNodeWrapper getRootNodeOfUserTree(Id userOrRoleId) {
        return null;
    }
    global static String getSObjectTypeById(Id objectId) {
        return null;
    }
    global static String getTreeJSON() {
        return null;
    }
    global static String getTreeJSONByName(String str) {
        return null;
    }
    global static List<String> getkeypath(Id key) {
        return null;
    }
    global static Boolean isRole(Id objId) {
        return null;
    }
    global static Map<Id,wk_wedge__Categories__c> updateMetaForLanguage(Map<Id,wk_wedge__Categories__c> pan) {
        return null;
    }
global class RoleNodeWrapper {
    global Boolean hasChildren {
        get;
        set;
    }
    global Boolean isLeafNode {
        get;
        set;
    }
    global List<wk_wedge.CategoryUtill.RoleNodeWrapper> myChildNodes {
        get;
        set;
    }
    global String myparentcategory {
        get;
        set;
    }
    global Id myRoleId {
        get;
        set;
    }
    global String myRoleName {
        get;
        set;
    }
    global RoleNodeWrapper() {

    }
}
}
