import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';

void main() {
  group('Movie model tests', () {
    test('creates Movie instance with given properties', () {
      const movie = Movie(
        id: 'test-film',
        title: 'Test Film',
        rating: '12A',
        description: 'A film used for testing.',
        imagePath: 'assets/images/karsang.jpeg',
        showtime: 'Friday 1 Jan 2027, 18:00',
        price: 6.50,
      );

      expect(movie.id, 'test-film');
      expect(movie.title, 'Test Film');
      expect(movie.rating, '12A');
      expect(movie.description, 'A film used for testing.');
      expect(movie.imagePath, 'assets/images/karsang.jpeg');
      expect(movie.showtime, 'Friday 1 Jan 2027, 18:00');
      expect(movie.price, 6.50);
    });

    test('formattedPrice shows two decimals for a whole-pound price', () {
      const movie = Movie(
        id: 'whole-pound',
        title: 'Whole Pound Film',
        rating: 'PG',
        description: 'Costs a whole number of pounds.',
        imagePath: 'assets/images/karsang.jpeg',
        showtime: 'Friday 1 Jan 2027, 18:00',
        price: 8,
      );

      expect(movie.formattedPrice, '£8.00');
    });

    test('formattedPrice shows two decimals for a price with pence', () {
      const movie = Movie(
        id: 'with-pence',
        title: 'Pence Film',
        rating: 'PG',
        description: 'Costs pounds and pence.',
        imagePath: 'assets/images/karsang.jpeg',
        showtime: 'Friday 1 Jan 2027, 18:00',
        price: 7.5,
      );

      expect(movie.formattedPrice, '£7.50');
    });
  });
}
//flutter test test/movie_model_test.dart