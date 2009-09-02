/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - JyParty.as.
 */

package services.jypartyagent
{
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
public class _Super_JyParty extends EventDispatcher implements IValueObject
{
	model_internal var _internal_model : _JyPartyEntityMetadata;

	/**
	 * properties
	 */
	private var _internal_minnum : int;		
	private var _internal_owneremail : String;		
	private var _internal_title : String;		
	private var _internal_adddate : Date;		
	private var _internal_maxnum : int;		
	private var _internal_content : String;		
	private var _internal_ownerid : int;		
	private var _internal_partyid : int;		

    private static var emptyArray:Array = new Array();

    /**
     * derived property cache initialization
     */  
    model_internal var _cacheInitialized_isValid:Boolean = false;   
    
	model_internal var _changeWatcherArray:Array = new Array();   

	public function _Super_JyParty() 
	{	
		_model = new _JyPartyEntityMetadata(this);
	
		// Bind to own data properties for cache invalidation triggering  
       
	}

    /**
     * data property getters
     */
	[Bindable(event="propertyChange")] 
    public function get minnum() : int    
    {
            return _internal_minnum;
    }    
	[Bindable(event="propertyChange")] 
    public function get owneremail() : String    
    {
            return _internal_owneremail;
    }    
	[Bindable(event="propertyChange")] 
    public function get title() : String    
    {
            return _internal_title;
    }    
	[Bindable(event="propertyChange")] 
    public function get adddate() : Date    
    {
            return _internal_adddate;
    }    
	[Bindable(event="propertyChange")] 
    public function get maxnum() : int    
    {
            return _internal_maxnum;
    }    
	[Bindable(event="propertyChange")] 
    public function get content() : String    
    {
            return _internal_content;
    }    
	[Bindable(event="propertyChange")] 
    public function get ownerid() : int    
    {
            return _internal_ownerid;
    }    
	[Bindable(event="propertyChange")] 
    public function get partyid() : int    
    {
            return _internal_partyid;
    }    

    /**
     * data property setters
     */      
    public function set minnum(value:int) : void 
    {    	
    	var oldValue:int = _internal_minnum;               
        if (oldValue !== value)
        {
        	_internal_minnum = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "minnum", oldValue, _internal_minnum));
        }    	     
    }    
    public function set owneremail(value:String) : void 
    {    	
    	var recalcValid:Boolean = false;
    	if (value == null || _internal_owneremail == null)
    	{
    		recalcValid = true;
    	}	
    	
    	var oldValue:String = _internal_owneremail;               
        if (oldValue !== value)
        {
        	_internal_owneremail = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "owneremail", oldValue, _internal_owneremail));
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
    public function set adddate(value:Date) : void 
    {    	
    	var recalcValid:Boolean = false;
    	if (value == null || _internal_adddate == null)
    	{
    		recalcValid = true;
    	}	
    	
    	var oldValue:Date = _internal_adddate;               
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
    public function set maxnum(value:int) : void 
    {    	
    	var oldValue:int = _internal_maxnum;               
        if (oldValue !== value)
        {
        	_internal_maxnum = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxnum", oldValue, _internal_maxnum));
        }    	     
    }    
    public function set content(value:String) : void 
    {    	
    	var recalcValid:Boolean = false;
    	if (value == null || _internal_content == null)
    	{
    		recalcValid = true;
    	}	
    	
    	var oldValue:String = _internal_content;               
        if (oldValue !== value)
        {
        	_internal_content = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "content", oldValue, _internal_content));
        }    	     
        
        if (recalcValid && model_internal::_cacheInitialized_isValid)
        {
            model_internal::isValid_der = model_internal::calculateIsValid();
        }  
    }    
    public function set ownerid(value:int) : void 
    {    	
    	var oldValue:int = _internal_ownerid;               
        if (oldValue !== value)
        {
        	_internal_ownerid = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ownerid", oldValue, _internal_ownerid));
        }    	     
    }    
    public function set partyid(value:int) : void 
    {    	
    	var oldValue:int = _internal_partyid;               
        if (oldValue !== value)
        {
        	_internal_partyid = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "partyid", oldValue, _internal_partyid));
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

		if (_model.isOwneremailAvailable && _internal_owneremail == null)
		{
			violatedConsts.push("owneremailIsRequired");
		}
		if (_model.isTitleAvailable && _internal_title == null)
		{
			violatedConsts.push("titleIsRequired");
		}
		if (_model.isAdddateAvailable && _internal_adddate == null)
		{
			violatedConsts.push("adddateIsRequired");
		}
		if (_model.isContentAvailable && _internal_content == null)
		{
			violatedConsts.push("contentIsRequired");
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
    public function get _model() : _JyPartyEntityMetadata
    {
		return model_internal::_internal_model;              
    }	
    
    public function set _model(value : _JyPartyEntityMetadata) : void       
    {
    	var oldValue : _JyPartyEntityMetadata = model_internal::_internal_model;               
        if (oldValue !== value)
        {
        	model_internal::_internal_model = value;
        	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_internal_model));
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
