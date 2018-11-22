({
    jsFuntion : function(cmp) {
        var action=cmp.get("c.getAllContacts");
        action.setCallback(this, function(response){
            var state=response.getState();
            if(state==="SUCCESS"){
                cmp.set("v.allContactsList", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    }
})