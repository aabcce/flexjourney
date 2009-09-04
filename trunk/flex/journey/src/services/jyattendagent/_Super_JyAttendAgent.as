
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
import mx.data.RPCDataManager;
import mx.data.ManagedOperation;
import mx.data.ManagedAssociation;
import mx.data.ManagedQuery;
import mx.data.ItemReference;
import mx.collections.ItemResponder;
import mx.rpc.remoting.RemoteObject; 
import mx.rpc.remoting.Operation;
import fr.services.wrapper.RemoteObjectServiceWrapper;
import fr.vo.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

[ExcludeClass]
internal class _Super_JyAttendAgent extends RemoteObjectServiceWrapper
{      
    private var _jyAttendRPCDataManager : RPCDataManager;         
    private var managersArray : Array = new Array();
        
    public const DATA_MANAGER_JYATTEND : String = "JyAttend";         
        
    public function getDataManager(dataManagerName:String) : RPCDataManager
    {
        switch (dataManagerName)
        {
             case (DATA_MANAGER_JYATTEND):
                return _jyAttendRPCDataManager;      
            default:
                return null;
        }
    }
    
    /**
     * Commit all of the pending changes for this DataService, as well as all of the pending changes of all DataServices
     * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
     * managed association properties and share the same set of channels. 
     *
     * @see mx.data.DataManager
     * @see mx.data.DataStore
     *
     * @param itemsOrCollections:Array This is an optional parameter which defaults to null when
     *  you want to commit all pending changes.  If you want to commit a subset of the pending
     *  changes use this argument to specify a list of managed ListCollectionView instances
     *  and/or managed items.  ListCollectionView objects are most typically ArrayCollections
     *  you have provided to your fill method.  The items appropriate for this method are
     *  any managed version of the item.  These are any items you retrieve from getItem, createItem
     *  or using the getItemAt method from a managed collection.  Only changes for the
     *  items defined by any of the values in this array will be committed.
     *
     * @param cascadeCommit if true, also commit changes made to any associated
     *  items supplied in this list.
     *
     *  @return AsyncToken that is returned in <code>call</code> property of
     *  either the <code>ResultEvent.RESULT</code> or in the
     *  <code>FaultEvent.FAULT</code>.
     *  Custom data can be attached to this object and inspected later
     *  during the event handling phase.  If no changes have been made
     *  to the relevant items, null is returned instead of an AsyncToken.
     */
    public function commit(itemsOrCollections:Array=null, cascadeCommit:Boolean=false):AsyncToken
    {
    	return _jyAttendRPCDataManager.dataStore.commit(itemsOrCollections, cascadeCommit);
    }
       
    // Constructor
    public function _Super_JyAttendAgent()
    {
        // initialize service control
        _serviceControl = new RemoteObject(); 
        
        var operations:Object = new Object();
        var operation:Operation;         
         
        operation = new Operation(null, "addAttend");
		 operation.resultType = Boolean; 		 
        operations["addAttend"] = operation;
        operation = new Operation(null, "getAttend");
		 operation.resultType = JyAttend; 		 
        operations["getAttend"] = operation;
        operation = new Operation(null, "getAttendList");
		 operation.resultElementType = JyAttend;
        operations["getAttendList"] = operation;
        operation = new Operation(null, "getAttendListByID");
		 operation.resultElementType = Object;
        operations["getAttendListByID"] = operation;
    
        _serviceControl.operations = operations;   
		_serviceControl.convertResultHandler = TypeUtility.convertResultHandler;
        _serviceControl.source = "journey.agents.JyAttendAgent";
		_serviceControl.destination = "JyAttendAgent";
        
        var managedAssociation : ManagedAssociation;
    	var managedAssocsArray : Array;
        // initialize JyAttend data manager     
        _jyAttendRPCDataManager = new RPCDataManager();
        managersArray.push(_jyAttendRPCDataManager);
        
        managedAssocsArray = new Array();
        
        _jyAttendRPCDataManager.destination = "jyAttendRPCDataManager";
        _jyAttendRPCDataManager.service = _serviceControl;        
        _jyAttendRPCDataManager.identities =  "attendid";      
        _jyAttendRPCDataManager.itemClass = JyAttend; 
        
                   
    
        var dmOperation : ManagedOperation;
        var dmQuery : ManagedQuery;
         
        dmQuery = new ManagedQuery("getAttendList");
        dmQuery.propertySpecifier = "auditresult,useremail,auditid,userid,auditdate,title,adddate,content,attendid,partyid";
        dmQuery.pagingEnabled = true;
        dmQuery.parameters = "arg0,startIndex,numItems";
        _jyAttendRPCDataManager.addManagedOperation(dmQuery);                 

        _serviceControl.managers = managersArray;
                      
         model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'addAttend' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function addAttend(arg0:JyAttend) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("addAttend");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

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
	public function getAttendList(arg0:ArrayCollection) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getAttendList");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	

	/**
	  * This method is a generated wrapper used to call the 'getAttendListByID' operation. It returns an AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function getAttendListByID(arg0:String) : AsyncToken
	{
		var _internal_operation:AbstractOperation = _serviceControl.getOperation("getAttendListByID");
		var _internal_token:AsyncToken = _internal_operation.send(arg0) ;

		return _internal_token;
	}   
	

}

}
