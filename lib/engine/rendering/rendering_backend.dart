/// Contract for a future real-time rendering implementation.
///
/// This is an architectural seam only. No concrete GPU renderer is included yet.
/// A backend must document lifecycle ownership, surface handling, resource
/// disposal, platform coverage, and runtime diagnostics before being accepted.
abstract interface class RenderingBackend {
  /// Human-readable backend name and version.
  String get backendName;

  /// Whether the backend has completed initialization successfully.
  bool get isInitialized;

  /// Initialize renderer resources for the current platform/surface.
  Future<void> initialize();

  /// Release all native/GPU resources owned by this backend.
  Future<void> dispose();
}
