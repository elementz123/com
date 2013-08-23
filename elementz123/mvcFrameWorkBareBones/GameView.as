package com.elementz123.mvcFrameWorkBareBones
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...Responsible for adding and removing game elements to stage and UI/display logic
	 * @author elementz123
	
	 */
	public class GameView extends Sprite
	{
		private var gameModel:GameModel;
		private var gameController:GameController;
		private var _stage:Object;
		
		public function GameView(model:GameModel, controller:GameController, stage:Object)
		{
			this._stage = stage;
			gameController = controller;
			gameModel = model;
			gameModel.addEventListener(Event.CHANGE, changeHandler);
			
			addEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
		}
		
		private function addedToStageHandler(e:Event):void
		{
			addChild(gameModel.screen);
			
			removeEventListener(Event.ADDED_TO_STAGE, addedToStageHandler);
			addEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
		}
		
		private function removedFromStageHandler(e:Event):void
		{
			removeEventListener(Event.REMOVED_FROM_STAGE, removedFromStageHandler);
		}
		
		private function changeHandler(e:Event):void
		{
		
		}
	}
}