package journey.commands
{
	import com.adobe.cairngorm.business.*;
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.*;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	import journey.model.ModelLocator;
	import journey.controller.*;
	import journey.ui.*;
	
	import services.jyuseragent.*;
	
	public class UserLogout implements ICommand,IResponder
	{
		public function UserLogout()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var e:CustomEvent = CustomEvent(event);
			var call:AsyncToken = new JyUserAgent().logout();
			call.addResponder(this);
		}
		
		public function fault(info:Object):void
		{
			ModelLocator.getInstance().Stage.ShowError(info);
		}
		
		public function result(data:Object):void
		{
			ModelLocator.getInstance().CurrUser = null;
			ModelLocator.getInstance().Stage.SwitchState(StatesOption.LOGOUT);
//			if(data.result)
//			{
//				ModelLocator.getInstance().CurrUser = null;
//				ModelLocator.getInstance().Stage.SwitchState(StatesOption.LOGOUT);
//			}
//			else
//			{
//				ModelLocator.getInstance().Stage.ShowError(data);
//			}
		}
	}
}