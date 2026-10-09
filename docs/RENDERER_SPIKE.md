# Renderer Spike — Decision Record

Status: **Not started**

## Required comparison

Compare at least two plausible approaches where practical:
- A maintained Flutter-compatible 3D engine/plugin.
- A native rendering engine integrated through platform channels or FFI.

Evaluate:
- Maintenance activity and compatibility with current Flutter/Dart.
- Android and iOS support; desktop/web support only if realistic for the candidate.
- Real-time render-loop integration and Flutter surface composition.
- Shader/material capabilities, shadows, post-processing, instancing, and asset pipeline.
- App lifecycle, context loss, memory ownership, crash diagnostics.
- Licensing and long-term project risk.
- Physical-device frame pacing and thermal behavior.

## Acceptance experiment

1. Build a minimal app that renders a rotating, lit 3D primitive.
2. Use a perspective camera and a visible ground/reference plane.
3. Exercise pause/resume and route navigation.
4. Measure frame times over a sustained run; state the device model, OS, screen resolution, backend version, and test duration.
5. Capture screenshots/video of the running test for evidence (these are validation artifacts, not the cinematic output).
6. Record failures and trade-offs.
7. Select the backend only after evidence review.

## Results

No experiment has been run yet. Do not fill this section with assumed or simulated results.
