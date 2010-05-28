package rasheed.fake {
	public class Latin {

		private static const latin:Array =
			"lorem ipsum dolor sit amet consectetuer adipiscing elit sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat ut wisi enim ad minim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi Ut wisi enim ad minim veniam quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi".split(" ");

		private static var latinLength:int = latin.length;

		public static const SENTENCE_WORD_COUNT_MIN:int = 5;
		public static const SENTENCE_WORD_COUNT_MAX:int = 21;

		public static function getWord():String {
			return latin[FakeHelper.intUnder(latinLength)];
		}

		public static function getSentence():String {
			var length:int = FakeHelper.intInRange(SENTENCE_WORD_COUNT_MIN,SENTENCE_WORD_COUNT_MAX);

			var index:int;

			var resultArray:Array = [];

			for (index = 0; index < length; index++) {
				resultArray.push(getWord());
			}

			return resultArray.join(" ");

		}
	}
}