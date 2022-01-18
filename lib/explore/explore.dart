import 'package:flutter/material.dart';
import 'package:onlinetickets/body/sortbar.dart';
import 'package:url_launcher/url_launcher.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<dynamic> exploremovies = [
    {
      "cover": "assets/moviecovers/nonstop.jpg",
      "title": "The Siege of Jadotville",
      "genre": "War",
      "duration": "1h 48min",
      "rating": "7.2"
    },
    {
      "cover": "assets/moviecovers/fury.jpg",
      "title": "Fury",
      "genre": "War",
      "duration": "2h 14min",
      "rating": "7.4"
    },
    {
      "cover": "assets/moviecovers/londonhasfallen.jpg",
      "title": "London has fallen",
      "genre": "Politics",
      "duration": "2h 05min",
      "rating": "8.6"
    },
    {
      "cover": "assets/moviecovers/scream.jpg",
      "title": "Scream 7",
      "genre": "Horror",
      "duration": "1h 24min",
      "rating": "8.6"
    },
    {
      "cover": "assets/moviecovers/hacksawridge.jpg",
      "title": "hacksaw",
      "genre": "War",
      "duration": "1h 44min",
      "rating": "8.3"
    },
        {
      "cover": "assets/moviecovers/scream.jpg",
      "title": "48 Christmas wishes",
      "genre": "Family",
      "duration": "1h 24min",
      "rating": "8.6"
    },
        {
      "cover": "assets/moviecovers/american-sniper.jpg",
      "title": "48 Christmas wishes",
      "genre": "Family",
      "duration": "1h 24min",
      "rating": "8.6"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff101012),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          title: const Text("Explore"),
          toolbarHeight: 60,
          backgroundColor: const Color(0xff101012),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Sortbar(),
              const SizedBox(height: 15),
              Row(
                children: [
                  InkWell(
                    onTap: _launch1URL,
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 270,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff191a1b)),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){},
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(exploremovies[0]["cover"]),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                children: [
                                  const Icon(
                                    Icons.access_time_filled,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[0]["duration"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.video_camera_front,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[0]["genre"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.stars_rounded,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[0]["rating"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap:_launch2URL ,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 270,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff191a1b)),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(exploremovies[1]["cover"]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                children: [
                                  const Icon(
                                    Icons.access_time_filled,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[1]["duration"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.video_camera_front,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[1]["genre"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.stars_rounded,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[1]["rating"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: <Widget>[
                  InkWell(
                    onTap:_launch3URL ,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 270,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff191a1b)),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(exploremovies[2]["cover"]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                children: [
                                  const Icon(
                                    Icons.access_time_filled,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[2]["duration"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.video_camera_front,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[2]["genre"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.stars_rounded,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[2]["rating"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: _launch4URL,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 270,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff191a1b)),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(exploremovies[3]["cover"]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                children: [
                                  const Icon(
                                    Icons.access_time_filled,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[3]["duration"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.video_camera_front,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[3]["genre"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.stars_rounded,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[3]["rating"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    height: 270,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff191a1b)),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(exploremovies[4]["cover"]),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: [
                                const Icon(
                                  Icons.access_time_filled,
                                  color: Colors.white70,
                                ),
                                Text(
                                  exploremovies[4]["duration"],
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                const Icon(
                                  Icons.video_camera_front,
                                  color: Colors.white70,
                                ),
                                Text(
                                  exploremovies[4]["genre"],
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                const Icon(
                                  Icons.stars_rounded,
                                  color: Colors.white70,
                                ),
                                Text(
                                  exploremovies[4]["rating"],
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:_launch4URL,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 270,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff191a1b)),
                      child: Column(
                        children: <Widget>[
                          
                             Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(exploremovies[1]["cover"]),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                children: [
                                  const Icon(
                                    Icons.access_time_filled,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[5]["duration"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.video_camera_front,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[5]["genre"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.stars_rounded,
                                    color: Colors.white70,
                                  ),
                                  Text(
                                    exploremovies[5]["rating"],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}




void _launch1URL() async {
  if (!await launch("https://www.youtube.com/watch?v=jiHDJ19A3dk")) throw 'Could not launch';
}


void _launch2URL() async {
  if (!await launch("https://www.youtube.com/watch?v=DNHuK1rteF4")) throw 'Could not launch';
}

void _launch3URL() async {
  if (!await launch("https://www.youtube.com/watch?v=3AsOdX7NcJs")) throw 'Could not launch';
}


void _launch4URL() async {
  if (!await launch("youtube.com/watch?v=nRwLyKIBNU8")) throw 'Could not launch';
}