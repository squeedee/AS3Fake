package rasheed.fake {
	import flash.geom.Point;
	import flash.geom.Rectangle;

	import org.hamcrest.assertThat;
	import org.hamcrest.number.between;

	public class SpatialCase {

		[Before]
		public function setup():void {
		}

		/* givens */

		private var randomBoundingBox:Rectangle;
		private static const MAX_RANDOM_BOUND:Number = 100;
		private static const MIN_RANDOM_BOUND:Number = -100;

		private function withARandomBoundingBox():void {
			var x:Number = Math.random() * MIN_RANDOM_BOUND;
			var y:Number = Math.random() * MIN_RANDOM_BOUND;
			var w:Number = Math.random() * (MAX_RANDOM_BOUND - x);
			var h:Number = Math.random() * (MAX_RANDOM_BOUND - y);

			randomBoundingBox = new Rectangle(x,y,w,h);
		}

		/* tests */

		private static const MAX_ITERATIONS:int = 100;

		[Test(given="random bounding boxes",
			it="returns a point within the bounding box")]
		public function itReturnsAPointWithinTheBoundingBox():void {
			for (var i:int = 0; i < MAX_ITERATIONS; i++) {
				withARandomBoundingBox();

				var result:Point = Spatial.getAABBPoint(randomBoundingBox);

				assertThat(result.x, between(randomBoundingBox.left,randomBoundingBox.right));
				assertThat(result.y, between(randomBoundingBox.top,randomBoundingBox.bottom));
			}
		}

	}
}