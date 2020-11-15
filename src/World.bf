using System.Collections;

namespace Spectre
{
	static class World
	{

		private static uint64 nextFreeID = 0;

		// All entities!
		static List<Entity> entities ~ DeleteContainerAndItems!(_);
		// not sure how to optimally group components. using struct of lists for now,
		// maybe should be some kind of Dictionary<T, List<T>> or something?

		public static void WorldLoop() {

		}

		public static void AddEntity(Entity e) {
			entities.Add(e);
			for(IComponent* component in e.components) {
				switch((*component).GetType()) {
					case TransformComponent:

				}
			}
		}

		public static uint64 GetNextFreeID() {
			return nextFreeID++;
		}
	}
}
