({
    showtranshelper : function(component,event,helper) {
        var action=component.get("c.ShowAllTrans");
        action.setCallback(this, function(response){
            var translist=response.getReturnValue();
            component.set("v.allTrans", translist);
        });
        $A.enqueueAction(action);
    },
    selectChange : function(component, event, helper) {
        // first get the div element. by using aura:id
      var changeElement = component.find("DivID");
        // by using $A.util.toggleClass add-remove slds-hide class
      $A.util.toggleClass(changeElement, "slds-hide");
	  },
    
    
})