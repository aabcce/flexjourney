package journey.commands
{
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import journey.controller.Commands;
	import journey.controller.CustomEvent;
	import journey.model.*;
	import journey.ui.*;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	import services.jyuseragent.*;
 	
	public class UserIsLogin implements Command,IResponder
	{
		public function UserIsLogin()
 		{
 		}
 		
 		public function execute(event:CairngormEvent):void
 		{		
			var jua : services.jyuseragent.JyUserAgent = new JyUserAgent();
			var token:AsyncToken = jua.isLogin();
			token.addResponder(this);
 		}
		
		public function fault(info:Object):void
		{
			ModelLocator.getInstance().Stage.ShowError(info);
		}
		
		public function result(data:Object):void
		{
			if(!data.result)
			{
				ModelLocator.getInstance().Stage.SwitchState(StatesOption.LOGIN);
			}
			else
			{
				CairngormEventDispatcher.getInstance().dispatchEvent(
					new CustomEvent(journey.controller.Commands.USER_GETCURRUSER));
			}
		}
	}
}