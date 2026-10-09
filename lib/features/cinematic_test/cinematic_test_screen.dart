import 'package:flutter/material.dart';

import '../../engine/rendering/rendering_backend.dart';
import '../../engine/rendering/renderer_status.dart';

class CinematicTestScreen extends StatelessWidget {
  const CinematicTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const status = RendererStatus.notConfigured;

    return Scaffold(
      appBar: AppBar(title: const Text('Cinematic Engine Test')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Icon(Icons.view_in_ar_outlined, size: 64, color: Color(0xFFD5AF70)),
          const SizedBox(height: 20),
          Text(
            'Renderer not configured',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          const Text(
            'This page is a deliberate verification gate. It must not simulate success or display fake FPS/triangle counts. Implement a real backend spike and replace this status only after runtime evidence is available.',
            style: TextStyle(height: 1.5, color: Color(0xFFB1BDC8)),
          ),
          const SizedBox(height: 24),
          _StatusRow(label: 'Backend', value: status.label),
          const _StatusRow(label: 'GPU scene', value: 'Not implemented'),
          const _StatusRow(label: 'Physical device validation', value: 'Not performed'),
          const _StatusRow(label: 'Performance metrics', value: 'Unavailable'),
          const SizedBox(height: 24),
          const Text(
            'Next acceptance gate',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          const Text(
            'Render a rotating, lit 3D object with a perspective camera on a physical Android device. Record device model, OS version, backend and version, resolution, sustained frame pacing, thermal behavior, lifecycle recovery, and known limitations.',
            style: TextStyle(height: 1.5, color: Color(0xFFB1BDC8)),
          ),
        ],
      ),
    );
  }
}

class _StatusRow extends StatelessWidget {
  const _StatusRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(label, style: const TextStyle(color: Color(0xFFB1BDC8)))),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
