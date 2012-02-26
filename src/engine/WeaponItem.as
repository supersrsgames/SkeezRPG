package engine {
	/**
	 * @author alexmccormack
	 */
	import engine.InventoryItem;
	public class WeaponItem extends InventoryItem{
		public var damage:Number = 100;
		public function WeaponItem(_name:String,_damage:Number = 100){
			canDamage = true;
			givesHealth = false;
			type = "weapon";
			name = _name;
			damage = _damage;
		}
	}
}
