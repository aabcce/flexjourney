package journey.commands.user
{
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import journey.model.*;
	import journey.ui.*;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.utils.ObjectProxy;
	
	import services.jyuseragent.*;
 	
	public class GetCurrUser implements Command,IResponder
	{
		public function GetCurrUser()
 		{
 		}
 		
 		public function execute(event:CairngormEvent):void
 		{		
			var agent : services.jyuseragent.JyUserAgent = new JyUserAgent();
			var token:AsyncToken = agent.getCurrUser();
			token.addResponder(this);
 		}
		
		public function fault(info:Object):void
		{
			ModelLocator.getInstance().Stage.ShowError(info);
		}
		
		public function result(data:Object):void
		{
			ModelLocator.getInstance().currUser = data.result;//(JyUser)(new ObjectProxy(data.result));
		}
	}
}