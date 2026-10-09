import 'package:flutter/material.dart';

import '../features/home/storyworld_home_screen.dart';

class StoryWorldApp extends StatelessWidget {
  const StoryWorldApp({super.key});

  @override
  Widget build(BuildContext context) {
    const seed = Color(0xFFC79A55);

    return MaterialApp(
      title: 'StoryWorld',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seed,
          brightness: Brightness.dark,
          surface: const Color(0xFF111820),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0F14),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0F14),
          foregroundColor: Color(0xFFF3E9D7),
          centerTitle: false,
        ),
        cardTheme: CardThemeData(
          color: const Color(0xFF151E27),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(color: Color(0xFF293540)),
          ),
        ),
      ),
      home: const StoryWorldHomeScreen(),
    );
  }
}
