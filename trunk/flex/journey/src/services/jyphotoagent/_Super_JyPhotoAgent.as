
/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - JyPhotoAgent.as.
 */
package services.jyphotoagent
{
import mx.rpc.AsyncToken;
import fr.core.model_internal;
import mx.rpc.AbstractOperation;
import mx.collections.ArrayCollection;
import valueObjects.JyPhoto;
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import fr.services.wrapper.RemoteObjectServiceWrapper;
import fr.vo.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_JyPhotoAgent extends RemoteObjectServiceWrapper
{      
       
    // Constructor
    public function _Super_JyPhotoAgent()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
        var operations:Object = new Object();
        var operation:Operation;         
         
        operation = new Operation(null, "getPhotoList");
		 operation.resultElementType = JyPhoto;
        operations["getPhotoList"] = operation;
        operation = new Operation(null, "addPhotos");
		 operation.resultType = Boolean; 		 
        operations["addPhotos"] = operation;
        operation = new Operation(null, "getPhoto");
		 operation.resultType = JyPhoto; 		 
        operations["getPhoto"] = operation;
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = TypeUtility.convertResultHandler;
        _serviceControl.source = "journey.agents.JyPhotoAgent";
		_serviceControl.destination = "JyPhotoAgent";
        
    
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'getPhotoList' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getPhotoList(arg0:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getPhotoList");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	

	/**
	  * This method is a generated wrapper used to call the 'addPhotos' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function addPhotos(arg0:ArrayCollection) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("addPhotos");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	

	/**
	  * This method is a generated wrapper used to call the 'getPhoto' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getPhoto(arg0:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getPhoto");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	

}

}
