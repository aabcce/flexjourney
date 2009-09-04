package journey.controller
{
	import journey.*;
	import journey.commands.*;
	import journey.commands.journey.*;
	import journey.commands.user.*;
	import com.adobe.cairngorm.control.FrontController;
 	
	public class FrontController extends com.adobe.cairngorm.control.FrontController
	{
		public function FrontController()
 		{
 			super();
			
			this.initCommand();
 		}
		
		private function initCommand():void
		{
		}
		
	}
}