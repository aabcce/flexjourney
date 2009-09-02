
/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - JyUserAgent.as.
 */
package services.jyuseragent
{
import mx.rpc.AsyncToken;
import fr.core.model_internal;
import mx.rpc.AbstractOperation;
import services.jyuseragent.JyUser
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import fr.services.wrapper.RemoteObjectServiceWrapper;
import fr.vo.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_JyUserAgent extends RemoteObjectServiceWrapper
{      
       
    // Constructor
    public function _Super_JyUserAgent()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
         var operations:Object = new Object();
         var operation:Operation;         
         
         operation = new Operation(null, "getCurrUser");
		 operation.resultType = JyUser; 		 
         operations["getCurrUser"] = operation;
         operation = new Operation(null, "lostPassword");
		 operation.resultType = Boolean; 		 
         operations["lostPassword"] = operation;
         operation = new Operation(null, "logout");
         operations["logout"] = operation;
         operation = new Operation(null, "login");
		 operation.resultType = Boolean; 		 
         operations["login"] = operation;
         operation = new Operation(null, "isLogin");
		 operation.resultType = Boolean; 		 
         operations["isLogin"] = operation;
         operation = new Operation(null, "register");
		 operation.resultType = Boolean; 		 
         operations["register"] = operation;
         _serviceControl.operations = operations;   
		 _serviceControl.convertResultHandler = TypeUtility.convertResultHandler;

		_serviceControl.destination = "JyUserAgent";
        
    
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'getCurrUser' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getCurrUser() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getCurrUser");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   

	/**
	  * This method is a generated wrapper used to call the 'lostPassword' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function lostPassword(arg0:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("lostPassword");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   

	/**
	  * This method is a generated wrapper used to call the 'logout' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function logout() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("logout");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   

	/**
	  * This method is a generated wrapper used to call the 'login' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function login(arg0:String, arg1:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("login");
		var _internal_token:AsyncToken = _internal_operation.send(arg0,arg1) ;

		return _internal_token;
	}   

	/**
	  * This method is a generated wrapper used to call the 'isLogin' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function isLogin() : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("isLogin");
		var _internal_token:AsyncToken = _internal_operation.send() ;

		return _internal_token;
	}   

	/**
	  * This method is a generated wrapper used to call the 'register' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function register(arg0:String, arg1:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("register");
		var _internal_token:AsyncToken = _internal_operation.send(arg0,arg1) ;

		return _internal_token;
	}   

}

}
