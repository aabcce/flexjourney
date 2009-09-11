package journey.view.journey.shareboard
{
	import flash.net.FileReference;
	
	public class UploadFileInfo
	{
		public function UploadFileInfo()
		{
		}
		
		[Bindable]
		public var title:String;
		[Bindable]
		public var comment:String;
		[Bindable]
		public var url:String;
		[Bindable]
		public var status:int;
		[Bindable]
		public var remoteurl:String;
		
		public var ref:FileReference;
	}
}