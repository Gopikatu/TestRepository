({
    jshelper : function(component,event,helper) {
        var action=component.get("c.RetriveAllrecords");
        action.setCallback(this,function(response){
            var result=response.getReturnValue();
            component.set("v.opprecords", result);
        });
        $A.enqueueAction(action);
        
    }
})