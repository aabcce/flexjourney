// ActionScript file
import journey.controller.*;
import journey.model.ModelLocator;
import journey.commands.*;

import journey.ui.StatesOption;

import com.adobe.cairngorm.control.*;

import mx.validators.Validator;

private function onLogin():void
{
	var resArr:Array = Validator.validateAll([this.emailValid,this.pwdValid]);
	if(resArr.length > 0)
	return;
	
	var email:String = this.email.text;
	var pwd:String = this.pwd.text;
	
	com.adobe.cairngorm.control.CairngormEventDispatcher.getInstance().dispatchEvent(
	new CustomEvent(Commands.USER_LOGIN,{email:email,password:pwd}));
	
}
private function swtichToRegister():void
{
	ModelLocator.getInstance().Stage.SwitchState(StatesOption.REGISTER);
}

private function swtichToLostPassword():void
{
	ModelLocator.getInstance().Stage.SwitchState(StatesOption.LOSTPASSWORD);
}