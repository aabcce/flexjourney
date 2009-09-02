// ActionScript file
import com.adobe.cairngorm.control.CairngormEventDispatcher;

import journey.controller.*;
import journey.model.ModelLocator;
import journey.ui.*;

import mx.controls.Alert;
import mx.events.FlexEvent;
import mx.rpc.*;

private var controller:FrontController = new FrontController();
private var model:ModelLocator = ModelLocator.getInstance();

protected function application1_creationCompleteHandler(event:FlexEvent):void
{
	// TODO Auto-generated method stub
		
	model.Stage = this;
	
	CairngormEventDispatcher.getInstance().dispatchEvent(
		new CustomEvent(Commands.USER_ISLOGIN));
	
}

public function SwitchState(state:String):void
{
	this.currentState = state;
}

public function ShowError(error:Object):void
{
	Alert.show(error.toString());
}