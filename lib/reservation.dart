import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:onlinetickets/details.dart';
import 'package:onlinetickets/main.dart';
import 'package:onlinetickets/movies.dart';

class ReservationPage extends StatelessWidget {

  final Movie movie;
  const ReservationPage({Key? key,required this.movie}) : super(key: key);

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
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details(movie: movie)));
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(right: 35),
          child: Center(
              child: Text(
            'Select Seats',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          )),
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.02),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.10),
              width: size.width * 0.80,
              height: size.height * 0.01,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: const Color(0xffffb43a),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      offset: const Offset(0, 20),
                      color: const Color(0xffffb43a).withOpacity(0.50),
                    )
                  ]),
            ),
            SizedBox(height: size.height * 0.07),
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              height: size.height * 0.36,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: size.width * 0.45,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: size.width * 0.45,
                    height: size.height,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: size.height * 0.015),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              width: size.width * 0.085,
                              height: size.height * 0.045,
                              decoration: BoxDecoration(
                                  color: const Color(0xff373741),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ignore: avoid_unnecessary_containers
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: size.width * 0.04,
                      height: size.height * 0.04,
                      decoration: const BoxDecoration(
                        color: Color(0xff373741),
                        shape: BoxShape.circle,
                      )),
                  SizedBox(width: size.width * 0.02),
                  const Text('Available',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(width: size.width * 0.04),
                  Container(
                      width: size.width * 0.04,
                      height: size.height * 0.04,
                      decoration: const BoxDecoration(
                        color: Colors.orangeAccent,
                        shape: BoxShape.circle,
                      )),
                  SizedBox(width: size.width * 0.02),
                  const Text('Selected', style: TextStyle(color: Colors.white)),
                  SizedBox(width: size.width * 0.04),
                  Container(
                      width: size.width * 0.04,
                      height: size.height * 0.04,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      )),
                  SizedBox(width: size.width * 0.02),
                  const Text('Reserved', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Container(
              height: size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff373741),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Select Date and Time',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
