package journey.commands
{
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import journey.model.*;
	import journey.ui.*;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.utils.ObjectProxy;
	
	import services.jyuseragent.*;
 	
	public class UserGetCurrUser implements Command,IResponder
	{
		public function UserGetCurrUser()
 		{
 		}
 		
 		public function execute(event:CairngormEvent):void
 		{		
			var jua : services.jyuseragent.JyUserAgent = new JyUserAgent();
			var token:AsyncToken = jua.getCurrUser();
			token.addResponder(this);
 		}
		
		public function fault(info:Object):void
		{
			ModelLocator.getInstance().Stage.ShowError(info);
		}
		
		public function result(data:Object):void
		{
			ModelLocator.getInstance().CurrUser = data.result;//(JyUser)(new ObjectProxy(data.result));
		}
	}
}