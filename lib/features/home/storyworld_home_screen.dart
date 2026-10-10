import 'package:flutter/material.dart';

import '../../features/cinematic_test/cinematic_test_screen.dart';

class StoryWorldHomeScreen extends StatelessWidget {
  const StoryWorldHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.auto_awesome, color: Color(0xFFC79A55)),
            SizedBox(width: 10),
            Text('STORYWORLD', style: TextStyle(letterSpacing: 2.0)),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
          children: [
            Text(
              'Stories, brought to life.',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: const Color(0xFFF3E9D7),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'A real-time cinematic world generated on your device.',
              style: Theme.of(context).textTheme.bodyLarge
                  ?.copyWith(color: const Color(0xFFB1BDC8)),
            ),
            const SizedBox(height: 26),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF34404A),
                    Color(0xFF151C23),
                    Color(0xFF211A12),
                  ],
                ),
                border: Border.all(color: const Color(0xFF4B463A)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.landscape_outlined,
                    size: 34,
                    color: Color(0xFFD5AF70),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'FIRST STORY',
                    style: TextStyle(
                      color: Color(0xFFD5AF70),
                      letterSpacing: 2.0,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'The Tower of Babel',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFF3E9D7),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Genesis 11:1–9 · Ancient Mesopotamia',
                    style: TextStyle(color: Color(0xFFB1BDC8)),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'The first milestone is to prove the 3D rendering foundation before building the full cinematic.',
                    style: TextStyle(height: 1.5, color: Color(0xFFD1D8DE)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.developer_board_outlined,
                          color: Color(0xFFD5AF70),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Rendering foundation',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Backend selection is intentionally pending. This test screen is a scaffold, not a functioning 3D renderer.',
                      style: TextStyle(color: Color(0xFFB1BDC8), height: 1.45),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => const CinematicTestScreen(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.science_outlined),
                        label: const Text('OPEN CINEMATIC ENGINE TEST'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            const _PrincipleTile(
              icon: Icons.movie_filter_outlined,
              title: 'Runtime-generated',
              subtitle: 'No prerecorded cinematic video or image sequence.',
            ),
            const _PrincipleTile(
              icon: Icons.camera_alt_outlined,
              title: 'Continuous-shot ambition',
              subtitle: 'Camera movement carries the first story without artificial cuts.',
            ),
            const _PrincipleTile(
              icon: Icons.speed_outlined,
              title: 'Device-first validation',
              subtitle: 'Measure frame pacing and thermals on real supported hardware.',
            ),
          ],
        ),
      ),
    );
  }
}

class _PrincipleTile extends StatelessWidget {
  const _PrincipleTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      leading: Icon(icon, color: const Color(0xFFD5AF70)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Color(0xFFB1BDC8)),
      ),
    );
  }
}
