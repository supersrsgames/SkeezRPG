package engine {
	/**
	 * @author alexmccormack
	 */
	import engine.InventoryItem;
	public class Inventory {
		public var contents:Array = new Array();//holds the inventories contents
		public var space:Number;//the amount of space it can hold
		private var lastAdded:Number = 0;//the id of the last added item
		private var itemNames:Array = new Array();
		public function Inventory(_space:Number){
			space = _space;//let the constructor set the space
			buildContents();//build the contents array
		}

		public function addItem(item:InventoryItem):void{
			if(space == lastAdded){
				trace("Too many inventory items");//if the space is the same as the last one is added
				return;							  //end it and do not add the item
			}
			/*
			 * REMEMBER TO ADD IN AN IN GAME ERROR
			 */
			contents[lastAdded] = item;//the contents of the inventory now hold the added item
			itemNames[lastAdded] = item.name;//the names array for easy access to names without that annoying warning
			lastAdded++;//and the last added item id goes up by one
		}
		public function removeItem(item:InventoryItem):void{
			for(var i:Number = 0; i <= lastAdded;i++){
					if(contents[i] == item){
						contents[i]	= "empty";//if the content is the item remove it
						itemNames[i] = "empty";//tired of the stupid error so i did this
						sortInventory();//sort the inventory
						return;//end the function, so you do not take out doubles.
					}
			}
			/*
			 * ADD IN GAME ERROR FOR INSUCCESSFUL ITEM REMOVAL
			 */
			 trace("removalunsuccessful");
		}
		public function displayInventory():void{
			trace(itemNames);
		}
		private function sortInventory():void{
			for(var x:Number = space-1; x >= 0; x--){	
				for(var y:Number = space-1; y >= 0; y--){
					if(contents[x] == "empty" && contents[y] != "empty"){
						contents[x] = contents[y];//replace the contents of the later one in the array
						contents[y] = "empty";//delete the old arrays contents
						itemNames[x] = itemNames[y];//do the same for the itemnames
						itemNames[y] = "empty";
					}
				}
			}
		}
		private function buildContents() : void {
			for(var i:Number = 0; i <= space-1;i++){
				contents[i] = "Empty";//just set up the array
				itemNames[i] = "empty";
			}
		}
	}
}