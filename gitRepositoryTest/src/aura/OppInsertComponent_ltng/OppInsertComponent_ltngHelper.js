({
	helperMethod : function(component,event,helper) {
        var clintsideinput=component.get("v.Opportunityvar");
        var action=component.get("c.doinsertOpp");
        action.setParams({oppObject : clintsideinput});
        action.setCallback(this,function(response){
            var result=response.getReturnValue();
            var state=response.getstate();
            if(state==="SUCCESS"){
                alert('opportunity sucessfully inserted with ID'+result.Id);
            }else{
                alret('somthing went wrong'+json.stringyfy(result));
            }
        });
		
	}
})