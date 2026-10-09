/// A measured performance sample. Populate only from real runtime measurements.
class PerformanceSample {
  const PerformanceSample({
    required this.timestamp,
    required this.frameTime,
    required this.framesPerSecond,
    required this.gpuMemoryBytes,
  });

  final DateTime timestamp;
  final Duration frameTime;
  final double framesPerSecond;
  final int? gpuMemoryBytes;
}
