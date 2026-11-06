import 'package:southsea_cinema/models/movie.dart';

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(
        id: 'unko-sweater',
        title: 'Unko Sweater',
        rating: '12A',
        description:
            'A shy knitter discovers that her grandmother\'s old sweater '
            'brings very strange luck to whoever wears it.',
        imagePath: 'assets/images/unko_sweater.jpeg',
        showtime: 'Thursday 22 Oct 2026, 18:30',
        price: 7.50,
      ),
      Movie(
        id: 'karsang',
        title: 'Karsang',
        rating: '15',
        description: 'A retired detective returns to his coastal hometown and '
            'finds that an old mystery is not as buried as he thought.',
        imagePath: 'assets/images/karsang.jpeg',
        showtime: 'Friday 23 Oct 2026, 20:00',
        price: 8.00,
      ),
    ];
  }

  Movie? getMovieById(String id) {
    for (final movie in getMovies()) {
      if (movie.id == id) {
        return movie;
      }
    }
    return null;
  }
}
