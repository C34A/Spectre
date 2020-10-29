namespace Spectre {
	abstract class IComponent {
		// Called on the first frame after this component is added (or the entity is created)
		public abstract void start();
		// Called every frame
		public abstract void update(float delta);
		// Pointer to the entity this object is attached to
		protected Entity* myEntity;
	}
}
