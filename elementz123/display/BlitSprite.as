package com.elementz123.display
{
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	public class BlitSprite
	{
		public var sheetBmd:BitmapData;
		public var rects:Array;
		public var canvas:BitmapData;
		public var pos:Point = new Point();
		public var x:Number = 0;
		public var y:Number = 0;
		public var animIndex:int = 0;
		private var count:int = 0;
		protected var frameInterval:int = 10;
		public var animate:Boolean = true;
		
		public function BlitSprite(sheetBmd:BitmapData, rects:Array, canvas:BitmapData)
		{
			this.sheetBmd = sheetBmd;
			this.rects = rects;
			this.canvas = canvas;
		}
		
		public function render():void
		{
			pos.x = x - rects[animIndex].width * 0.5;
			pos.y = y - rects[animIndex].height * 0.5;
			canvas.copyPixels(sheetBmd, rects[animIndex], pos);
			if (count % frameInterval == 0 && animate)
				animIndex = (animIndex == rects.length - 1) ? 0 : animIndex + 1;
			count++;
		}
	}
}