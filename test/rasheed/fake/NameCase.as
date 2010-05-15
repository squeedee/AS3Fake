package rasheed.fake {
	import flash.events.Event;

	import org.flexunit.asserts.assertEquals;
	import org.hamcrest.assertThat;
	import org.hamcrest.core.isA;
	import org.hamcrest.core.not;
	import org.hamcrest.mxml.object.EqualTo;
	import org.hamcrest.number.greaterThan;
	import org.hamcrest.object.equalTo;
	import org.hamcrest.object.notNullValue;

	public class NameCase {

		[Before]
		public function setup():void {
		}

		[Test(it="creates a non-empty first name")]
		public function ItCreatesANonEmptyFirstName():void {
			var result:String = Name.getFirstName();

			assertThat(result,notNullValue());
			assertThat(result.length,greaterThan(0));
			assertThat(result,isA(String));
		}

		[Test(it="creates different first names")]
		public function ItCreatesDifferentFirstNames():void {
			var result1:String = Name.getFirstName();
			var result2:String = Name.getFirstName();

			assertThat(result1,not(equalTo(result2)));
		}

		[Test(it="creates a non-empty last name")]
		public function ItCreatesANonEmptyLastName():void {
			var result:String = Name.getLastName();

			assertThat(result,notNullValue());
			assertThat(result.length,greaterThan(0));
			assertThat(result,isA(String));
		}

		[Test(it="creates different last names")]
		public function ItCreatesDifferentLastNames():void {
			var result1:String = Name.getLastName();
			var result2:String = Name.getLastName();

			assertThat(result1,not(equalTo(result2)));
		}

	}
}