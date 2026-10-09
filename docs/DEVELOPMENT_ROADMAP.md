# Development Roadmap

Milestones are sequential. Do not advance until the current acceptance criteria are supported by evidence.

## M00 — Repository and Flutter foundation
- Establish app shell, analysis, widget tests, and CI.
- Acceptance: `flutter analyze`, `flutter test`, and a supported-platform debug build pass.

## M01 — Renderer feasibility spike
- Compare viable engine/backend options and select one based on evidence.
- Render one rotating, lit 3D primitive using a perspective camera.
- Acceptance: physical Android runtime validation; record device/OS, backend version, frame pacing, thermal behavior, and lifecycle tests.
- Do not report FPS unless measured.

## M02 — Renderer lifecycle and diagnostics
- Pause/resume, surface recreation, cleanup, error reporting, performance sampling.
- Acceptance: repeatable lifecycle test and no persistent native/GPU resource leak in the available diagnostics.

## M03 — Procedural environment blockout
- Procedural ground, terrain silhouette, sky/atmosphere, simple light/shadows.
- Acceptance: visible runtime-generated scene on target device; quality presets alter real renderer settings.

## M04 — Procedural props and ancient settlement
- Modular architecture and reusable props with deterministic seeds.
- Acceptance: reproducible generation and bounded scene complexity.

## M05 — Human characters and animation
- Character representation, rig/animation strategy, deterministic identities, LOD.
- Acceptance: multiple moving characters at sustained target frame pacing on target hardware.

## M06 — Cinematic director
- Continuous camera path, framing, focus, scene beats, motion coordination.
- Acceptance: uninterrupted camera path with no editorial cuts and graceful fallback when performance degrades.

## M07 — Tower of Babel sequence
- Build the settlement, tower construction stages, crowd activity, atmosphere, and story beats.
- Acceptance: complete runtime-generated approximately 60-second experience; document any simplifications.

## M08 — Multiplatform hardening
- Verify each explicitly supported platform, input/lifecycle differences, packaging, accessibility, and quality adaptation.
- Acceptance: platform-specific test matrix with actual outcomes. Do not claim universal platform support without verification.
