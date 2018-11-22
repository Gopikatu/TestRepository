({
    AccountInsertHelper : function(component,event,helper) {
        var clintinput=component.get("v.accountvar");
        console.log('clintinput'+clintinput);
        var action=component.get("c.doAccountInsert");
        action.setParams({SobjAccount : clintinput});
        action.setCallback(this,function(response){
                           var result=response.getReturnValue();
        console.log('result'+JSON.stringify(result));
        var state=response.getstate();
        console.log('state'+JSON.stringify(state));
        if(state==='SUCCESS'){
            alert('account has been inserted with id'+result.Id);
        }else
        {
        alert('somthing went wrong'+JSON.stringify(result));    
        }
        
    });
    $A.enqueueAction(action);
}
 })