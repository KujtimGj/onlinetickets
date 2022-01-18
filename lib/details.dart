import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onlinetickets/main.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:onlinetickets/body/movies.dart';
import 'package:onlinetickets/booking/reservationpage.dart';
import 'body/movies.dart';

// ignore: must_be_immutable
class Details extends StatelessWidget {
  final Movie movie;

  const Details({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff101012),
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xff101012)),
        backgroundColor: const Color(0xff101012),
        elevation: 0,
        toolbarHeight: 70,
        actions: <Widget>[
          IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.favorite),
            ),
            onPressed: () {},
          )
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        title:  Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Center(
              child: Text(
            'Movie Detail',
            style:Theme.of(context).textTheme.headline6!.copyWith(color:Colors.white, fontWeight:FontWeight.w400),
          )
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                height: size.height * 0.40,
                width: size.width * 0.57,
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(movie.cover), fit: BoxFit.cover)),
              ),
              Container(
                alignment: Alignment.centerRight,
                height: size.height * 0.40,
                width: size.width * 0.25,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.12,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const DecoratedIcon(
                            Icons.video_camera_front,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                blurRadius: 15,
                                color: Colors.white,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Genre',
                            style: TextStyle(color: Color(0xff6c6c70)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(movie.genre,
                              style: const TextStyle(color: Color(0xffffffff)))
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: size.height * 0.12,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const DecoratedIcon(
                            Icons.access_time_filled,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(blurRadius: 15, color: Colors.white)
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Duration',
                            style: TextStyle(color: Color(0xff6c6c70)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            movie.duration,
                            style: const TextStyle(color: Color(0xffffffff)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: size.height * 0.12,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const DecoratedIcon(
                            Icons.star_rounded,
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                blurRadius: 15,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Rating',
                            style: TextStyle(color: Color(0xff6c6c70)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${movie.rating}',
                            style: const TextStyle(color: Color(0xffffffff)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              movie.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: size.width * 0.90,
              height: 1.5,
              color: const Color(0xff2b2b35),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Synopsis',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // ignore: sized_box_for_whitespace
              child: Container(
                width: size.width * 0.90,
                child: Text(
                  movie.synopsis,
                  style: const TextStyle(
                      color: Color(0xff6c6c70),
                      fontSize: 15,
                      letterSpacing: 0.5,
                      height: 2),
                ),
              )),
          SizedBox(
            height: size.height * 0.04,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: size.height * 0.07,
                width: size.width * 0.70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xffffb43a)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReservationPage(
                                  movie: movie,
                                )));
                  },
                  child: const Text(
                    'Get Reservation',
                    style: TextStyle(fontSize: 15, color: Color(0xff101012)),
                  ),
                )),
          )
        ]),
      ),
    );
  }
}
