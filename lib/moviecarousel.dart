import 'package:flutter/material.dart';
import 'package:onlinetickets/moviecard.dart';
import 'package:onlinetickets/movies.dart';
import 'dart:math' as math;

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.75,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: AspectRatio(
            aspectRatio: 0.85,
            child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    initialPage = value;
                  });
                },
                physics: const ClampingScrollPhysics(),
                itemCount: movies.length,
                itemBuilder: (context, index) => buildMovieSlider(index)),
          ),
        ),
        SmoothPageIndicator(
          controller: _pageController,
          count: 4,
          effect: const ExpandingDotsEffect(
              dotHeight: 15,
              dotColor: Colors.grey,
              dotWidth: 15,
              activeDotColor: Color(0xff7165d7)),
        ),
      ],
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - double.parse('${_pageController.page}');
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
                angle: math.pi * value, child: MovieCard(movie: movies[index])),
          );
        },
      );
}
