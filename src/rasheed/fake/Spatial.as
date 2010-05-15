package rasheed.fake {
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/**
	 * Purely 2D for speed. Make a Spatial3D if that's what you need.
	 */
	public class Spatial {

		/**
		 * Returns random point in a rectangle.
		 *
		 *
		 * @param aabb limits for the point
		 * @return point where aabb.left <= x < aabb.right and aab.top <= y < aabb.bottom
		 */
		public static function getAABBPoint(aabb:Rectangle):Point {
			return new Point(
				aabb.left + (Math.random() * aabb.width),
				aabb.top + (Math.random() * aabb.height)
			);
		}
	}
}