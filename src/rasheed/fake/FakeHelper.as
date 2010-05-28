package rasheed.fake {
	public class FakeHelper {
		public static function intUnder(range:int):int {
			return intInRange(0,range);
		}
		public static function intInRange(min:int,max:int):int {
			return min + Math.floor(Math.random() * max - min);
		}

	}
}