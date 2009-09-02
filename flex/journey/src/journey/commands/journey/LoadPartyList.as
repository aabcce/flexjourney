package journey.commands.journey
{
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import journey.controller.*;
	import journey.model.ModelLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	import services.jypartyagent.JyPartyAgent;
 	
	public class LoadPartyList implements Command,IResponder
	{
		private var ui:Object;
		
		public function LoadPartyList()
 		{
 		}
 		
		public function execute(event:CairngormEvent):void
		{
			var e:CustomEvent = CustomEvent(event);
			ui = e.data.ui;
			var agent : services.jypartyagent.JyPartyAgent = new JyPartyAgent();
			var token:AsyncToken = agent.getPartyList(e.data.filter,e.data.orderby,e.data.limit);
			token.addResponder(this);
		}
		
		public function fault(info:Object):void
		{
			ModelLocator.getInstance().Stage.ShowError(info);
		}
		
		public function result(data:Object):void
		{
			ui.partyList = data.result;	
		}
	}
}