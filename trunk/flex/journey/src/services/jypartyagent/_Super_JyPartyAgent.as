
/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - JyPartyAgent.as.
 */
package services.jypartyagent
{
import mx.rpc.AsyncToken;
import fr.core.model_internal;
import mx.rpc.AbstractOperation;
import mx.collections.ArrayCollection;
import valueObjects.JyParty;
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import fr.services.wrapper.RemoteObjectServiceWrapper;
import fr.vo.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_JyPartyAgent extends RemoteObjectServiceWrapper
{      
       
    // Constructor
    public function _Super_JyPartyAgent()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
        var operations:Object = new Object();
        var operation:Operation;         
         
        operation = new Operation(null, "getParty");
		 operation.resultType = JyParty; 		 
        operations["getParty"] = operation;
        operation = new Operation(null, "getPartyList");
		 operation.resultElementType = JyParty;
        operations["getPartyList"] = operation;
        operation = new Operation(null, "addParty");
		 operation.resultType = Boolean; 		 
        operations["addParty"] = operation;
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = TypeUtility.convertResultHandler;
        _serviceControl.source = "journey.agents.JyPartyAgent";
		_serviceControl.destination = "JyPartyAgent";
        
    
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'getParty' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getParty(arg0:int) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getParty");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	

	/**
	  * This method is a generated wrapper used to call the 'getPartyList' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getPartyList(arg0:ArrayCollection, arg1:String, arg2:int) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getPartyList");
		var _internal_token:AsyncToken = _internal_operation.send(arg0,arg1,arg2) ;

		return _internal_token;
	}   
	

	/**
	  * This method is a generated wrapper used to call the 'addParty' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function addParty(arg0:JyParty) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("addParty");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	

}

}
