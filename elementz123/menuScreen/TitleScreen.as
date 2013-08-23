package com.elementz123.menuScreen
{
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author elementz123
	
	 */
	
	public class TitleScreen extends Sprite
	{
		//embed background title image here
		private var TitlePic:Class;
		private var playBtn:PlayButton = new PlayButton();
		private var _main:Object;
		
		public function TitleScreen(main:Object)
		{
			_main = main;
			var titlePic:DisplayObject = new TitlePic();
			addChild(titlePic);
			addChild(playBtn);
			
			playBtn.addEventListener(MouseEvent.CLICK, onPlayClick);
		}
		
		private function onPlayClick(e:MouseEvent):void
		{
			_main.processPlay();
		}
	}
}