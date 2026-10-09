# StoryWorld Flutter

StoryWorld is a Flutter/Dart multiplatform application for runtime-generated, real-time 3D story cinematics. The first proof-of-concept story is the Tower of Babel (Genesis 11:1–9).

## Product constitution

- Generate scenes and animation at runtime. Do not use prerecorded videos, MP4s, image sequences, GIFs, cloud-generated video, or streaming as the cinematic itself.
- Aim for a continuous cinematic shot for the first story, using camera movement rather than editorial cuts.
- Flutter is the multiplatform app/UI layer. The 3D renderer must be selected through an evidence-based spike; do not claim a production renderer exists until a real scene is running on target devices.
- Prioritize measurable runtime and visual validation over source-code or unit-test claims alone.
- Keep milestones small, sequential, testable, and documented.
- Support graceful degradation through quality presets and diagnostics, targeting ordinary supported mobile hardware.

## Current status

**Bootstrap only.** This repository scaffold contains a Flutter UI shell, a renderer boundary, tests, documentation, and CI scaffolding. It does not yet contain a working real-time 3D renderer or completed Tower of Babel cinematic.

## Requirements

- Flutter stable SDK (use the version currently supported by your target environment)
- Dart SDK bundled with Flutter
- Platform toolchain for the platform you want to run (Android SDK for Android)

## Run

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

## Renderer decision gate

Before creating detailed procedural assets, implement a minimal renderer spike and verify it on a physical Android device. Evaluate Flutter-compatible engines and native GPU integration against platform coverage, shader support, lifecycle stability, frame pacing, and maintenance cost. Record results in `docs/RENDERER_SPIKE.md` before choosing a long-term backend.

## Project docs

- [Project vision](docs/PROJECT_VISION.md)
- [Architecture](docs/ARCHITECTURE.md)
- [Development roadmap](docs/DEVELOPMENT_ROADMAP.md)
- [Renderer spike](docs/RENDERER_SPIKE.md)
