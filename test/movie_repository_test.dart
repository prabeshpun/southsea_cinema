import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/models/movie.dart';
import 'package:southsea_cinema/repositories/movie_repository.dart';

void main() {
  group('MovieRepository unit tests', () {
    test('getMovies returns two movies', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      expect(movies.length, 2);
    });

    test('getMovies contains valid Unko Sweater and Karsang films', () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      final Movie unkoSweater = movies[0];
      expect(unkoSweater.id, 'unko-sweater');
      expect(unkoSweater.title, 'Unko Sweater');
      expect(unkoSweater.price, 7.50);
      expect(unkoSweater.imagePath, isNotEmpty);

      final Movie karsang = movies[1];
      expect(karsang.id, 'karsang');
      expect(karsang.title, 'Karsang');
      expect(karsang.price, 8.00);
      expect(karsang.imagePath, isNotEmpty);
    });

    test('getMovieById returns matching movie when id exists', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('karsang');

      expect(movie, isNotNull);
      expect(movie?.title, 'Karsang');
      expect(movie?.price, 8.00);
    });

    test('getMovieById returns null when id does not exist', () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById('non-existent');

      expect(movie, isNull);
    });
  });
}
//flutter test test/movie_repository_test.dart
