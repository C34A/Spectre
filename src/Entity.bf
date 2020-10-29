using System.Collections;

namespace Spectre {
	class Entity {
		public readonly int64 ID;
		// do not delete these, use gobal component manager!
		protected List<IComponent*> components;
	}
}
