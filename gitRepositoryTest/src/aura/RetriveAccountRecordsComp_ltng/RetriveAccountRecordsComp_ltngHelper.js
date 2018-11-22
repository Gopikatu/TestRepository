({
    helpermethod : function(component,event,helper) {
        var action=component.get("c.retiveAccounts");
        action.setCallback(this,function(response){
            var result=response.getReturnValue();
            component.set("v.accountvar", result);
        });
        $A.enqueueAction(action);
        
    }
})