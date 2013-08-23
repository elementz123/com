package com.elementz123.mvcFrameWorkBareBones
{
	import flash.events.Event;
	
	/**
	 * ...Creates the main game loop. Responsible for logic for initialization, level setup,
	 * collision detection, and scoring. Also creates all objects used in game and adds them
	 * to the GameModel to be stored.
	 * @author elementz123
	
	 */
	public class GameController
	{
		private var gameModel:GameModel;
		private var _stage:Object;
		
		public function GameController(model:GameModel, stage:Object)
		{
			this._stage = stage;
			gameModel = model;
			this._stage.addEventListener(Event.ENTER_FRAME, onEntFrame);
			
			setupLevel();
		}
		
		private function setupLevel():void
		{
		//test
		}
		
		private function onEntFrame(e:Event):void
		{
		
		}
	}
}