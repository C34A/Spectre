namespace Spectre {
	abstract class IComponent {
		// Called on the first frame after this component is added (or the entity is created)
		public abstract void Start();
		// Called every frame
		public abstract void Update(float delta);
		// Pointer to the entity this object is attached to
		protected Entity* myEntity;
	}
}
