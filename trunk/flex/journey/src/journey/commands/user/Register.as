package journey.commands.user
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
	
	public class Register implements ICommand,IResponder
	{
		public function Register()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var e:CustomEvent = CustomEvent(event);
			var call:AsyncToken = new JyUserAgent().register(e.data.email,e.data.password);
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
				ModelLocator.getInstance().Stage.SwitchState(StatesOption.LOGIN);
			}
			else
			{
				ModelLocator.getInstance().Stage.ShowError(data);
			}
		}
	}
}