import 'package:flutter/material.dart';
import 'package:onlinetickets/details.dart';
import 'package:onlinetickets/body/movies.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5.0),
      child: InkWell(
        onTap:() => Navigator.push(context,MaterialPageRoute(builder:(context) => Details(movie: movie))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                height: size.height * 0.35,
                margin: const EdgeInsets.symmetric(horizontal: 15,),
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
          
          ],
        ),
      ),
    );
  }
}
