package rasheed.fake {
	import org.hamcrest.assertThat;
	import org.hamcrest.core.isA;
	import org.hamcrest.core.not;
	import org.hamcrest.number.greaterThan;
	import org.hamcrest.object.notNullValue;
	import org.hamcrest.text.containsString;

	public class LatinCase {
		[Before]
		public function setup():void {
		}

		[Test(it="creates a non-empty word")]
		public function itCreatesANonEmptyWord():void {
			var result:String = Latin.getWord();

			assertNotAnEmptyString(result);
		}

		public var sentence:String;

		[Test(given="a sentence with no column maximum",
			it="creates a non-empty sentence without line breaks")]
		public function itCreatesANonEmptySentenceWithoutLineBreaks():void {
			givenASentenceWithNoColumnMaximum();

			assertNotAnEmptyString(sentence);
			
			assertThat(sentence,not(containsString("\n")));

		}

//		[Test(given="a sentence with an eighty column maximum",

		//			it="creates a non-empty sentence with line breaks before eighty")]
		//		public function itCreatesANonEmptySentenceWithLineBreaksBeforeEighty():void {
		//		}
		//
		//		[Test(given="a paragraph with 2 sentences with no column maximum",
		//			it="creates a non-empty paragraph without line breaks")]
		//		public function itCreatesANonEmptyParagraphWithoutLineBreaks():void {
		//		}
		//
		//		[Test(given="a paragraph with 2 sentences with an eighty column maximum",
		//			it="creates a non-empty paragraph with line breaks before eighty")]
		//		public function itCreatesANonEmptyParagraphWithLineBreaksBeforeEighty():void {
		//		}

		// fixme: this	 is a helper, make helper class
		private function assertNotAnEmptyString(test:Object):void {
			assertThat(test, notNullValue());
			assertThat(test.length, greaterThan(0));
			assertThat(test, isA(String));
		}


		private function givenASentenceWithNoColumnMaximum():void {
			sentence = Latin.getSentence();
		}



	}
}