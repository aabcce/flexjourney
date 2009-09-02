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
			this.addCommand(Commands.USER_LOGIN,Login);
			this.addCommand(Commands.USER_LOGOUT,Logout);
			this.addCommand(Commands.USER_LOSTPASSWORD,LostPassword);
			this.addCommand(Commands.USER_REGISTER,Register);
			this.addCommand(Commands.USER_ISLOGIN,IsLogin);
			this.addCommand(Commands.USER_GETCURRUSER,GetCurrUser);
			
			this.addCommand(Commands.JOURNEY_LOADPARTY,LoadParty);
			this.addCommand(Commands.JOURNEY_LOADPARTYLIST,LoadPartyList);
		}
		
	}
}