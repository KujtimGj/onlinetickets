class Movie {

  final int id;
  final double rating;
  final String title, duration, synopsis, cover, genre;


Movie ({
  required this.cover,
  required this.duration,
  required this.id,
  required this.rating,
  required this.synopsis,
  required this.title,
  required this.genre
});



}

List<Movie> movies = [

  Movie(
    id:2,
    title: 'American Sniper',
    cover: 'assets/moviecovers/american-sniper.jpg',
    duration: '2h 12min',
    rating: 9.5,
    genre: 'Action',
    synopsis: "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero."
  ), 

  Movie(
    id:1,
    title: 'Spider-Man:No way home',
    cover: 'assets/moviecovers/spiderman.jpg',
    duration: '2h 28min',
    rating: 9.8,
    genre: 'Action',
    synopsis: "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero."
  ),

    Movie(
    id:3,
    title: 'Interstellar',
    cover: 'assets/moviecovers/interstellar.jpg',
    duration: '2h 49min',
    rating: 10.0,
    genre: 'Sci-Fi',
    synopsis: "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero."
  ),

  Movie(
    id:4,
    title: 'Django',
    cover: 'assets/moviecovers/django.jpg',
    duration: '2h 45min',
    rating: 7.9,
    genre: 'Action',
    synopsis: "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero."
  ),

];