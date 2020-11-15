using System.Collections;

namespace Spectre {
	class Entity {
		public readonly uint64 ID;
		// do not delete these, use gobal component manager!
		public List<IComponent*> components;
	}
}
