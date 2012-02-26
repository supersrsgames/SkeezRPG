package actor {
	import engine.WeaponItem;
	import engine.InventoryItem;
	/**
	 * @author alexmccormack
	 */
	public class Quest {
		public var type:String;
		public var givesGold:Boolean;
		public var givesItem:Boolean;
		public var givesWeapon:Boolean;
		public var gold:Number;
		public var item:InventoryItem;
		public var weaponItem:WeaponItem;
		public var exp:Number;
		public function Quest(_type:String,_givesGold:Boolean,_givesItem:Boolean,_givesWeapon:Boolean,_gold:Number,_item:InventoryItem,_weaponItem:WeaponItem,_exp:Number){
			type = _type;
			givesGold = _givesGold;
			givesItem = _givesItem;
			givesWeapon = _givesWeapon;
			gold = _gold;
			item = _item;
			weaponItem = _weaponItem;
			exp = _exp;
		}
	}
}
