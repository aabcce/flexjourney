package journey.model
{
    import com.adobe.cairngorm.model.ModelLocator;
    
    import journey.ui.*;
    
    import valueObjects.*;
	
	[Bindable]
	public class ModelLocator implements com.adobe.cairngorm.model.ModelLocator
	{
		private static var _model:journey.model.ModelLocator = new journey.model.ModelLocator();
		
		public var currUser:JyUser;
		
		public var currParty:JyParty;
		
		public var attended:Boolean;
		
		public static function getInstance():journey.model.ModelLocator
		{
			return(_model);
		}
		
		public var Stage:IStage;
	}
}