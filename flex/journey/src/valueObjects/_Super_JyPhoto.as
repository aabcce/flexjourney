/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - JyPhoto.as.
 */

package valueObjects
{
import valueObjects.Timestamp;
import flash.events.EventDispatcher;
import fr.core.model_internal;
import fr.vo.IPropertyIterator;
import fr.vo.IValueObject;
import fr.vo.AvailablePropertyIterator;
import fr.services.IFiberManagingService;
import mx.binding.utils.ChangeWatcher;
import mx.rpc.AbstractService;


import flash.events.Event;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;


use namespace model_internal;

[ExcludeClass]
public class _Super_JyPhoto extends EventDispatcher implements IValueObject
{
	model_internal var _dminternal_model : _JyPhotoEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_describe : String;		
	private var _internal_title : String;		
	private var _internal_useremail : String;		
	private var _internal_adddate : Timestamp;		
	private var _internal_userid : int;		
	private var _internal_comment : String;		
	private var _internal_serial : String;		
	private var _internal_partyid : int;		
	private var _internal_photoid : int;		

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_JyPhoto() 
	{	
		_model = new _JyPhotoEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get describe() : String    
    {
            return _internal_describe;
    }    
	[Bindable(event="propertyChange")] 
    public function get title() : String    
    {
            return _internal_title;
    }    
	[Bindable(event="propertyChange")] 
    public function get useremail() : String    
    {
            return _internal_useremail;
    }    
	[Bindable(event="propertyChange")] 
    public function get adddate() : Timestamp    
    {
            return _internal_adddate;
    }    
	[Bindable(event="propertyChange")] 
    public function get userid() : int    
    {
            return _internal_userid;
    }    
	[Bindable(event="propertyChange")] 
    public function get comment() : String    
    {
            return _internal_comment;
    }    
	[Bindable(event="propertyChange")] 
    public function get serial() : String    
    {
            return _internal_serial;
    }    
	[Bindable(event="propertyChange")] 
    public function get partyid() : int    
    {
            return _internal_partyid;
    }    
	[Bindable(event="propertyChange")] 
    public function get photoid() : int    
    {
            return _internal_photoid;
    }    

    /**
     * data property setters
     */      
    public function set describe(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_describe == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_describe;               
        if (oldValue !== value)
        {
        	_internal_describe = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "describe", oldValue, _internal_describe));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set title(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_title == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_title;               
        if (oldValue !== value)
        {
        	_internal_title = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "title", oldValue, _internal_title));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set useremail(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_useremail == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_useremail;               
        if (oldValue !== value)
        {
        	_internal_useremail = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "useremail", oldValue, _internal_useremail));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set adddate(value:Timestamp) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_adddate == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:Timestamp = _internal_adddate;               
        if (oldValue !== value)
        {
        	_internal_adddate = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adddate", oldValue, _internal_adddate));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set userid(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_userid;               
        if (oldValue !== value)
        {
        	_internal_userid = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "userid", oldValue, _internal_userid));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set comment(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_comment == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_comment;               
        if (oldValue !== value)
        {
        	_internal_comment = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "comment", oldValue, _internal_comment));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set serial(value:String) : void 
    {    	
        var recalcValid:Boolean = false;
    	if (value == null || _internal_serial == null)
    	{
    		recalcValid = true;
    	}	
    	
    	
    	var oldValue:String = _internal_serial;               
        if (oldValue !== value)
        {
        	_internal_serial = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "serial", oldValue, _internal_serial));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set partyid(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_partyid;               
        if (oldValue !== value)
        {
        	_internal_partyid = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "partyid", oldValue, _internal_partyid));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set photoid(value:int) : void 
    {    	
        var recalcValid:Boolean = false;
    	
    	
    	var oldValue:int = _internal_photoid;               
        if (oldValue !== value)
        {
        	_internal_photoid = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "photoid", oldValue, _internal_photoid));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    

    /**
     * data property setter listeners
     */   

   model_internal function setterListenerAnyConstraint(value:Event):void
   {
        if (model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }        
   }   

    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();    
        var validationFailureMessages:Array = new Array();    

		if (_model.isDescribeAvailable && _internal_describe == null)
		{
			violatedConsts.push("describeIsRequired");
			validationFailureMessages.push("describe is required");
		}
		if (_model.isTitleAvailable && _internal_title == null)
		{
			violatedConsts.push("titleIsRequired");
			validationFailureMessages.push("title is required");
		}
		if (_model.isUseremailAvailable && _internal_useremail == null)
		{
			violatedConsts.push("useremailIsRequired");
			validationFailureMessages.push("useremail is required");
		}
		if (_model.isAdddateAvailable && _internal_adddate == null)
		{
			violatedConsts.push("adddateIsRequired");
			validationFailureMessages.push("adddate is required");
		}
		if (_model.isCommentAvailable && _internal_comment == null)
		{
			violatedConsts.push("commentIsRequired");
			validationFailureMessages.push("comment is required");
		}
		if (_model.isSerialAvailable && _internal_serial == null)
		{
			violatedConsts.push("serialIsRequired");
			validationFailureMessages.push("serial is required");
		}

		var styleValidity:Boolean = true;
	
	
	
	
	
	
	
	
	
    
        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && styleValidity;
    }  

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
       	var oldValue:Boolean = model_internal::_isValid;               
        if (oldValue !== value)
        {
        	model_internal::_isValid = value;
        	_model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }        
    }

    /**
     * derived property getters
     */

    [Transient] 
	[Bindable(event="propertyChange")] 
    public function get _model() : _JyPhotoEntityMetadata
    {
		return model_internal::_dminternal_model;              
    }	
    
    public function set _model(value : _JyPhotoEntityMetadata) : void       
    {
    	var oldValue : _JyPhotoEntityMetadata = model_internal::_dminternal_model;               
        if (oldValue !== value)
        {
        	model_internal::_dminternal_model = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }     
    }      

    /**
     * methods
     */  


    /**
     *  services
     */                  
     private var _managingService:IFiberManagingService;
    
     public function set managingService(managingService:IFiberManagingService):void
     {
         _managingService = managingService;
     }                      
     
    model_internal function set invalidConstraints_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_invalidConstraints;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;   
			_model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);   
        }     	             
    }             
    
     model_internal function set validationFailureMessages_der(value:Array) : void
    {  
     	var oldValue:Array = model_internal::_validationFailureMessages;
     	// avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;   
			_model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);   
        }     	             
    }        
     
     // Individual isAvailable functions     
	// fields, getters, and setters for primitive representations of complex id properties

}

}
