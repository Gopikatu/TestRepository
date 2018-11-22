({
	helperMethod : function(component,event,helper) {
		var action=component.get("c.doLoadOpp");
        action.setCallback(this, function(response){
            var state=response.getState();
            if(state==="SUCCESS"){
                component.set("v.Opportunities", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})