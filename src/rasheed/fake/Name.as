package rasheed.fake {
	public class Name {

		include "firstNames.as";
		include "lastNames.as";

		public static function getFirstName():String {
			return firstNames[FakeHelper.intInRange(firstNamesLength)];
		}

		public static function getLastName():String {
			return lastNames[FakeHelper.intInRange(lastNamesLength)];
		}
		
	}
}