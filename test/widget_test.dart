import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/widgets/movie_card.dart';

void main() {
  group('Home page smoke tests', () {
    testWidgets('home page displays the app title', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.text(appTitle), findsOneWidget);
    });

    testWidgets('home page displays a card for each movie',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.byType(MovieCard), findsNWidgets(2));
      expect(find.text('Unko Sweater (12A)'), findsOneWidget);
      expect(find.text('Karsang (15)'), findsOneWidget);
    });

    testWidgets('home page displays a booking button on each card',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.text('BOOK NOW'), findsNWidgets(2));
    });
  });
}
//flutter test test/widget_test.dart