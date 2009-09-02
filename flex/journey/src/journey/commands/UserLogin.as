package journey.commands
{	
	import com.adobe.cairngorm.business.*;
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.*;
	
	import journey.controller.*;
	import journey.model.ModelLocator;
	import journey.ui.*;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	import services.jyuseragent.*;
	
	public class UserLogin implements ICommand,IResponder
	{
		public function UserLogin()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var e:CustomEvent = CustomEvent(event);
			var call:AsyncToken = new JyUserAgent().login(e.data.email,e.data.password);
			call.addResponder(this);
		}
		
		public function fault(info:Object):void
		{
			ModelLocator.getInstance().Stage.ShowError(info);
		}
		
		public function result(data:Object):void
		{
			if(data.result)
			{
				ModelLocator.getInstance().Stage.SwitchState('state_default');
				CairngormEventDispatcher.getInstance().dispatchEvent(
					new CustomEvent(
				journey.controller.Commands.USER_GETCURRUSER)); 
			}
			else
			{
				ModelLocator.getInstance().Stage.ShowError(data);
			}		
		}
	}
}