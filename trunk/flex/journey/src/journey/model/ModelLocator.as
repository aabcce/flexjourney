package journey.model
{
	import journey.ui.*;
	
	import services.jypartyagent.JyParty;
	import services.jyuseragent.JyUser;
	
	[Bindable]
	public class ModelLocator
	{
		private static var _model:ModelLocator = new ModelLocator();
		
		public var Info:Object;
		
		public var currUser:services.jyuseragent.JyUser;
		
		public var currParty:JyParty;
		
		public static function getInstance():ModelLocator
		{
			return(_model);
		}
		
		public var Stage:IStage;
	}
}