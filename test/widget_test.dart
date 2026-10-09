import 'package:flutter_test/flutter_test.dart';
import 'package:storyworld/app/storyworld_app.dart';

void main() {
  testWidgets('home presents StoryWorld and the first story', (tester) async {
    await tester.pumpWidget(const StoryWorldApp());

    expect(find.text('STORYWORLD'), findsOneWidget);
    expect(find.text('The Tower of Babel'), findsOneWidget);
    expect(find.text('OPEN CINEMATIC ENGINE TEST'), findsOneWidget);
  });

  testWidgets('engine test honestly reports missing renderer', (tester) async {
    await tester.pumpWidget(const StoryWorldApp());
    await tester.tap(find.text('OPEN CINEMATIC ENGINE TEST'));
    await tester.pumpAndSettle();

    expect(find.text('Renderer not configured'), findsOneWidget);
    expect(find.text('Not performed'), findsOneWidget);
  });
}
