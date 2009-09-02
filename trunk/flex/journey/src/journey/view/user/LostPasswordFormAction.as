// ActionScript file
import com.adobe.cairngorm.control.*;

import journey.commands.*;
import journey.controller.*;
import journey.model.ModelLocator;
import journey.ui.StatesOption;

import mx.controls.Alert;
import mx.validators.Validator;

private function onLostPassword():void
{
	var resArr:Array = Validator.validateAll([this.emailValid]);
	if(resArr.length > 0)
	return;
	
	var email:String = this.email.text;
	
	if(!name.length == 0 && email.length == 0)
		return;
	
	var data:XML = <user username="{uname}" email="{email}" />;
	
	com.adobe.cairngorm.control.CairngormEventDispatcher.getInstance().dispatchEvent(
	new CustomEvent(Commands.USER_LOSTPASSWORD,{email:email}));
	
}
private function swtichToRegister():void
{
	ModelLocator.getInstance().Stage.SwitchState(StatesOption.REGISTER);
}

private function swtichToLostPassword():void
{
	ModelLocator.getInstance().Stage.SwitchState(StatesOption.LOSTPASSWORD);
}
public function success():void
{
	mx.controls.Alert.show("密码已经发到您的注册邮箱，请查收");
}