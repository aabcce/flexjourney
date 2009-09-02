package journey.commands.user
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
	
	public class LostPassword implements ICommand,IResponder
	{
		private var ui:Object;
		
		public function LostPassword()
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var e:CustomEvent = CustomEvent(event);
			ui = e.data.view;
			var call:AsyncToken = new JyUserAgent().lostPassword(e.data.email);
			call.addResponder(this);
		}
		
		public function fault(info:Object):void
		{
			ModelLocator.getInstance().Stage.ShowError(info);
		}
		
		public function result(data:Object):void
		{
			if(XML(data).text().toString() == "OK")
			{
				ui.success();
			}
			else
			{
				ModelLocator.getInstance().Stage.ShowError(data);
			}		
		}

	}
}