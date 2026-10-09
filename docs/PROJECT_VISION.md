# Project Vision

## Product

StoryWorld is a multiplatform Flutter/Dart application for interactive discovery of historical and scriptural stories through procedurally generated, real-time 3D cinematics.

## First story

The Tower of Babel, based on Genesis 11:1–9. The intended experience is a roughly 60-second continuous cinematic shot. Camera choreography, character motion, crowd behavior, environment, atmosphere, and the tower are generated or simulated at runtime.

## Hard constraints

1. The cinematic itself must not be a prerecorded video, MP4, GIF, image sequence, or streamed/cloud-generated video.
2. Runtime-generated geometry, animation, lighting, and camera motion are the target. Procedural systems may use authored parameters and source assets, but must not substitute a pre-rendered cinematic.
3. Flutter owns multiplatform application structure and UI. The 3D engine choice must be validated empirically.
4. Performance claims require measurement on named hardware. A successful compile or unit test does not prove a usable 3D experience.
5. A continuous shot means the camera does not use editorial scene cuts during the first cinematic; transitions may be achieved through camera motion, occlusion, and blocking.
6. Build incrementally and retain evidence for each acceptance gate.

## Initial acceptance target

On a physical Android device, display a lit 3D object with a perspective camera, stable lifecycle handling, and measured frame timing. Only after this is verified should the project move to procedural terrain and story-specific content.
