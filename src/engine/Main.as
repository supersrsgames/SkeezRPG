package engine{
	import actor.NonPlayerActor;
	import actor.ActorGenerator;
	import actor.PlayerActor;
	import flash.display.MovieClip;

	public class Main extends MovieClip
	{
		private var actorContainer:MovieClip = new MovieClip();
		private var actorGenerator:ActorGenerator = new ActorGenerator();
		private var npcData:Array = new Array();
	
		public function Main()
		{
			genNPC();
			var jeff:NonPlayerActor = actorGenerator.generate(0);
			var playerCharacter:PlayerActor = new PlayerActor();
			trace(jeff.speak());
			trace(playerCharacter.gold);
			jeff.turnInQuest(playerCharacter);
			trace(playerCharacter.gold);
			trace(jeff.speak());
			addChild(actorContainer);
			actorContainer.addChild(playerCharacter);			
		}
		private function genNPC():void{
			npcData;	
		}
	}

}