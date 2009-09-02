
import com.adobe.cairngorm.control.CairngormEventDispatcher;

import journey.controller.*;
import journey.model.ModelLocator;

import mx.collections.ArrayCollection;
import mx.events.FlexEvent;
import mx.events.ListEvent;

[Bindable]
var model:ModelLocator = new ModelLocator();

[Bindable]
var partyList:ArrayCollection = new ArrayCollection();

protected function group1_creationCompleteHandler(event:FlexEvent):void
{
	// TODO Auto-generated method stub
	
	loadPartyList();
}

protected function loadPartyList():void
{
	CairngormEventDispatcher.getInstance().dispatchEvent(
		new CustomEvent(Commands.JOURNEY_LOADPARTYLIST));
}

protected function adg1_itemClickHandler(event:ListEvent):void
{
	// TODO Auto-generated method stub
	model.currParty = partyList[event.columnIndex];
}