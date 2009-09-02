package journey.ui
{
	public interface IStage
	{
		function SwitchState(state:String):void;
		
		function ShowError(error:Object):void;
	}
}