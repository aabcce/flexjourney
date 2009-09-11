
/**
 * This is a generated class and is not intended for modfication.  
 */
package valueObjects
{
import fr.core.model_internal;
import fr.styles.IStyle;
import fr.styles.Style;
import fr.styles.LocalizeableMessage;
import fr.vo.IModelType;
import fr.vo.IPropertyIterator;
import fr.vo.AvailablePropertyIterator;
import fr.vo.AbstractEntityMetadata;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _JyPartyEntityMetadata extends AbstractEntityMetadata
{
	private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("minnum", "owneremail", "title", "adddate", "maxnum", "content", "ownerid", "partyid");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("minnum", "owneremail", "title", "adddate", "maxnum", "content", "ownerid", "partyid");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("minnum", "owneremail", "title", "adddate", "maxnum", "content", "ownerid", "partyid");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("minnum", "owneremail", "title", "adddate", "maxnum", "content", "ownerid", "partyid");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;    
    model_internal static var entityName:String = "JyParty";
    model_internal static var dependentsOnMap:Object;    
    model_internal static var dependedOnServices:Array =  new Array();
    
    
    model_internal var _instance:_Super_JyParty;
    model_internal static var _nullStyle:Style = new Style();
    
    public function _JyPartyEntityMetadata(jyParty : _Super_JyParty)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["minnum"] = new Array();
            model_internal::dependentsOnMap["owneremail"] = new Array();
            model_internal::dependentsOnMap["title"] = new Array();
            model_internal::dependentsOnMap["adddate"] = new Array();
            model_internal::dependentsOnMap["maxnum"] = new Array();
            model_internal::dependentsOnMap["content"] = new Array();
            model_internal::dependentsOnMap["ownerid"] = new Array();
            model_internal::dependentsOnMap["partyid"] = new Array();
                        
            // collection base map
            model_internal::collectionBaseMap = new Object()
        }                        
        
        model_internal::_instance = jyParty;     
    }
    
    override public function getEntityName():String
    {
        return model_internal::entityName;
    }    
    
    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }
    
    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }    
    
    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }
    
    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }    
    
    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }     
    
    override public function getUnGuardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }        
    
    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::dataProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity JyParty");  
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }
    
    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }
    
    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }
    
    override public function getCollectionBase(propertyName:String):String
    {
       if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity JyParty");  
            
       return model_internal::collectionBaseMap[propertyName];
    }                
    
     override public function getAvailableProperties():IPropertyIterator
     {
     	return new AvailablePropertyIterator(this); 
     }  
     
     override public function getValue(propertyName:String):Object    
     {
         if (model_internal::allProperties.indexOf(propertyName) == -1)
         {
         	throw new Error(propertyName + " does not exist for entity JyParty");
         }     
           
         return model_internal::_instance[propertyName];
     }       
     
     override public function setValue(propertyName:String, value:Object):void   
     {
         if (model_internal::dataProperties.indexOf(propertyName) == -1)
         {
              throw new Error(propertyName + " is not a data property of entity JyParty");
         }  
                                                     
         model_internal::_instance[propertyName] = value;
     }     
     
     override public function getMappedByProperty(associationProperty:String):String
     {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }   
     }
     
     override public function getPropertyLength(propertyName:String):int
     {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }  
     }
     
     override public function isAvailable(propertyName:String):Boolean
     {         
         if (model_internal::allProperties.indexOf(propertyName) == -1)
         {
         	throw new Error(propertyName + " does not exist for entity JyParty");
         }   
                
         if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
         {
         	return true;
         }
         
         switch(propertyName)
         {
            default:
            {
                return true;
            }
         }                                  
     }  
     
     override public function getIdentityMap():Object
     {
         var returnMap:Object = new Object();
       
         return returnMap;
     }       
     
	 [Bindable(event="propertyChange")]
	 override public function get invalidConstraints():Array
     {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            model_internal::_instance.model_internal::_cacheInitialized_isValid = true;
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }        
     }       
     
	 [Bindable(event="propertyChange")]
	 override public function get validationFailureMessages():Array
     {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            model_internal::_instance.model_internal::_cacheInitialized_isValid = true;
            return model_internal::_instance.model_internal::_validationFailureMessages;        
        }        
     }       
     
     override public function getDependantInvalidConstraints(propertyName:String):Array
     {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }
        
        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }
            
        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;     
        }                              
        
        return currentlyInvalid.filter(filterFunc);
     }      
     
    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;        
        }
    }       
     
     [Bindable(event="propertyChange")] 
     public function get isMinnumAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOwneremailAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isTitleAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isAdddateAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isMaxnumAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isContentAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isOwneridAvailable():Boolean
     {
        return true;
     }                       
                  
     [Bindable(event="propertyChange")] 
     public function get isPartyidAvailable():Boolean
     {
        return true;
     }                       
                  

    /**
     * derived property recalculation
     */

     model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
     {
     	this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
     }

    [Bindable(event="propertyChange")]   
    public function get minnumStyle():Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get owneremailStyle():Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get titleStyle():Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get adddateStyle():Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get maxnumStyle():Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get contentStyle():Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get owneridStyle():Style
    {
		return model_internal::_nullStyle;		
    }      
    
    [Bindable(event="propertyChange")]   
    public function get partyidStyle():Style
    {
		return model_internal::_nullStyle;		
    }      
    

     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            default:
            {
                return emptyArray;
            }
         }
     }
    
}

}
