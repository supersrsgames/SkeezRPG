package actor {
	/**
	 * @author alexmccormack
	 */
	public class ActorData {
		public var dataArray:Array = new Array;
		private var lastNumber:Number = 0;
		private var qData:QuestData = new QuestData();
		public function ActorData(){
			setArray();
		}
		private function addActor(_name:String,_givesQuest:Boolean,_hostile:Boolean,_willFight:Boolean,_questDialouge:String,_questCompleteDialouge:String,_chatDialouge:String,_quest:Quest):void{
			dataArray[lastNumber] = new Array();
			dataArray[lastNumber] = [_name,_givesQuest,_hostile,_willFight,_questDialouge,_questCompleteDialouge,_chatDialouge,_quest];
			lastNumber++;
		}
		private function setArray():void{
			addActor("Johnny",true,false,true,"Hey can you get shoes for me?","Thanks for the shoes!","What's up?",qData.getQuest(0));
			addActor("Jimmy",true,false,true,"Hey can you shoot some nigs for me?","Thanks for the bills!","Hey negro how goes it?",qData.getQuest(1));
			addActor("Timmy",true,false,true,"Hey can you get skrilla for me?","Thanks for the skrilla!","I smoke drugs.",qData.getQuest(1));
			
		}
	}
}
