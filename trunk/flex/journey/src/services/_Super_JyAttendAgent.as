/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - JyAttendAgent.as.
 */
package services
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;
import valueObjects.JyAttend;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_JyAttendAgent extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{      
       
    // Constructor
    public function _Super_JyAttendAgent()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();
        
        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;
         
        operation = new mx.rpc.remoting.Operation(null, "isCurrUserAttended");
		 operation.resultType = Boolean; 		 
        operations["isCurrUserAttended"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "isAttended");
		 operation.resultType = Boolean; 		 
        operations["isAttended"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "getAttendListByID");
		 operation.resultElementType = valueObjects.JyAttend;
        operations["getAttendListByID"] = operation;

        valueObjects.JyAttend._initRemoteClassAlias();
        operation = new mx.rpc.remoting.Operation(null, "addAttend");
		 operation.resultType = Boolean; 		 
        operations["addAttend"] = operation;

        operation = new mx.rpc.remoting.Operation(null, "getAttend");
		 operation.resultType = valueObjects.JyAttend; 		 
        operations["getAttend"] = operation;

        valueObjects.JyAttend._initRemoteClassAlias();
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
		destination = "JyAttendAgent";
        
    
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'isCurrUserAttended' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function isCurrUserAttended(arg0:String) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("isCurrUserAttended");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'isAttended' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function isAttended(arg0:String, arg1:String) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("isAttended");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getAttendListByID' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getAttendListByID(arg0:String) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAttendListByID");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'addAttend' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function addAttend(arg0:valueObjects.JyAttend) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("addAttend");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'getAttend' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getAttend(arg0:String) : mx.rpc.AsyncToken
	{
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAttend");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	 
}

}
