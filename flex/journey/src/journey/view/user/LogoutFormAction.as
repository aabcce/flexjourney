// ActionScript file
import journey.controller.*;
import journey.commands.*;
import journey.model.ModelLocator;

import com.adobe.cairngorm.control.*;

import mx.validators.Validator;
import journey.ui.StatesOption;

private function switchToLogin():void
{
	ModelLocator.getInstance().Stage.SwitchState(StatesOption.LOGIN);
}