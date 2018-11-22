({
	jsHelper : function(component,event,helper) {
		var clintinput=component.get("v.contactinfovar");
        console.log('>>>>>'+JSON.stringify(clintinput));
        var action=component.get("c.CreateContact");
        action.setParams({conObj : clintinput});
        action.setCallback(this,function(response){
           
            var respvar=response.getReturnValue();
            console.log('respvar'+JSON.stringify(respvar));
            var state=response.getState();
            if(state==="SUCCESS"){
                alert('contact inserted with id'+respvar);
            }else{
                alert('somting went wrong'+respvar.errorMsg);
            }
        });
        $A.enqueueAction(action);
	}
})