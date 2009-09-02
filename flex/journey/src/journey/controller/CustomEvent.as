package journey.controller
{
	import com.adobe.cairngorm.control.CairngormEvent
 	
	public class CustomEvent extends CairngormEvent
	{		
		public function CustomEvent(type:String,data:Object=null,
									bubbles:Boolean=false, cancelable:Boolean=false)
 		{
 			super(type, bubbles, cancelable);
			this.data = data;
 		}
	}
}