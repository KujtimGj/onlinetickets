import 'package:flutter/material.dart';
import 'package:onlinetickets/details.dart';
import 'package:onlinetickets/movies.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 10.0),
      child: InkWell(
        onTap:() => Navigator.push(context,MaterialPageRoute(builder:(context) => Details(movie: movie))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(movie.cover),
                    fit: BoxFit.cover
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 3),
            Text(movie.title,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.white70))
          ],
        ),
      ),
    );
  }
}
