package actor {
	/**
	 * @author alexmccormack
	 */
	public class ActorGenerator {
		public var data:ActorData = new ActorData();
		
		public function ActorGenerator(){
				
		}
		public function generate(_id:Number):NonPlayerActor{
			//trace(data.dataArray[_id]);
			var nonPlayerActor:NonPlayerActor = new NonPlayerActor(data.dataArray[_id][0],data.dataArray[_id][1],data.dataArray[_id][2],data.dataArray[_id][3],data.dataArray[_id][4],data.dataArray[_id][5],data.dataArray[_id][6],data.dataArray[_id][7]);
			return(nonPlayerActor);
		}
	}
}
