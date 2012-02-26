package actor {
	import flash.display.MovieClip;
	import engine.Inventory;
	/**
	 * @author alexmccormack
	 */
	public class Actor extends MovieClip{
		
		public var health:Number = 100;
		public var inventory:Inventory = new Inventory(5);
		public var battleMode:Boolean = false;
		public var playerName:String = new String();
		public var gold:Number = 100;
		public function Actor(){
			
		}
		public function giveGold(_amount:Number):void{
			gold += _amount;
		}
		public function die():void{
			
		}
	}
}
