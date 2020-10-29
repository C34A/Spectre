using System.Collections;

namespace Spectre
{
	static class World
	{
		// All entities!
		static List<Entity> entities ~ DeleteContainerAndItems!(_);
		// not sure how to optimally group components. using struct of lists for now,
		// maybe should be some kind of Dictionary<T, List<T>> or something?

		public static void WorldLoop() {

		}
	}
}
