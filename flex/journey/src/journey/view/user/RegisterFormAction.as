// ActionScript file
import journey.controller.*;
import com.adobe.cairngorm.control.*;

import flash.events.MouseEvent;

import mx.controls.Button;
import mx.controls.Alert;
import mx.validators.Validator;
import mx.managers.FocusManager;

import journey.ui.StatesOption;

private function onRegister():void
{
	var resArr:Array = Validator.validateAll(
		[this.emailValid,this.pwdValid,this.repeatpwdValid]);
	if(resArr.length > 0)
	return;
	
	var pwd:String = this.pwd.text;
	var repeatpwd:String = this.repeatpwd.text;
	var email:String = this.email.text;
	
	if(pwd != repeatpwd)
	{
		Alert.show("两次密码不一致!");
//		mx.managers.FocusManager.setFocus(this.pwd);
	}
	/*
	var data:XML = <user>
		<username>{uname}</username>
		<password>{pwd}</password>
		<email>{email}</password>
		<username>{name}</username>
		<password>{pwd}</password>
		<company>{this.company.text}</company>
		<contact>{this.contact.text}</contact>
		<telephone>{this.telephone.text}</telephone>
		<mobile>{this.mobile.text}</mobile>
	</user>;
	*/
	
	com.adobe.cairngorm.control.CairngormEventDispatcher.getInstance().dispatchEvent(
	new CustomEvent(Commands.USER_REGISTER,{
		email : email,
		password : pwd
	}));
	
}

/*
private function toggleDetail(event:MouseEvent):void
{
	if(detailedInfoTray.visible)
	{
		(event.target as Button).label = "\u00C1";
	}
	else
	{
		(event.target as Button).label = "\u00C2";
	}
	detailedInfoTray.visible = !detailedInfoTray.visible;
}
*/