# Architecture

## Proposed layers

- `app/`: Flutter application shell, theme, navigation.
- `features/`: user-facing features such as the cinematic test and later story browser.
- `engine/rendering/`: renderer contracts and platform integration boundary.
- `core/quality/`: named quality presets.
- `core/diagnostics/`: real runtime measurements and diagnostic models.
- `docs/`: architectural decisions, milestones, and verification evidence.

## Rendering backend decision

Do not assume Flutter's widget renderer is a 3D engine. Evaluate viable options, including a maintained Flutter-compatible 3D engine and a native rendering backend exposed through platform channels or FFI. Verify current maintenance, licenses, Android/iOS/desktop support, shader capabilities, render-loop integration, and performance before selection.

## Lifecycle contract

A concrete backend must define surface creation/destruction, app pause/resume, context loss recovery where applicable, GPU resource ownership, deterministic disposal, and error propagation. The Flutter UI must not block on a long-running render loop.

## Diagnostics contract

All FPS, frame time, memory, triangle counts, draw calls, and GPU timings must come from actual measurements. Unknown metrics remain unavailable; never substitute invented values.

## Quality profiles

- LOW: minimum expensive effects and reduced scene complexity.
- MEDIUM: balanced baseline.
- HIGH: optional advanced effects when device capability and sustained performance permit.

Exact resolutions, shadow settings, and feature gates are decided after the renderer spike, not guessed in advance.
