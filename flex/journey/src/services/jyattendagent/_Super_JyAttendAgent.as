
/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - JyAttendAgent.as.
 */
package services.jyattendagent
{
import mx.rpc.AsyncToken;
import fr.core.model_internal;
import mx.rpc.AbstractOperation;
import mx.collections.ArrayCollection;
import valueObjects.JyAttend;
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import fr.services.wrapper.RemoteObjectServiceWrapper;
import fr.vo.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_JyAttendAgent extends RemoteObjectServiceWrapper
{      
       
    // Constructor
    public function _Super_JyAttendAgent()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
        var operations:Object = new Object();
        var operation:Operation;         
         
        operation = new Operation(null, "getAttendList");
		 operation.resultElementType = Object;
        operations["getAttendList"] = operation;
        operation = new Operation(null, "getAttend");
		 operation.resultType = JyAttend; 		 
        operations["getAttend"] = operation;
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = TypeUtility.convertResultHandler;
        _serviceControl.source = "journey.agents.JyAttendAgent";
		_serviceControl.destination = "JyAttendAgent";
        
    
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'getAttendList' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getAttendList(arg0:ArrayCollection, arg1:String, arg2:int) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getAttendList");
		var _internal_token:AsyncToken = _internal_operation.send(arg0,arg1,arg2) ;

		return _internal_token;
	}   
	

	/**
	  * This method is a generated wrapper used to call the 'getAttend' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getAttend(arg0:int) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getAttend");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	

}

}
