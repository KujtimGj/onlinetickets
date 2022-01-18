// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:onlinetickets/details.dart';
import 'package:onlinetickets/main.dart';
import 'package:onlinetickets/body/movies.dart';
import 'package:onlinetickets/tickets/tickets.dart';

class ReservationPage extends StatefulWidget {
  final Movie movie;
  const ReservationPage({Key? key, required this.movie}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  int timeSelected = 1;
  List<String> time = [
    "14:00",
    "15:30"
        "17:00"
  ];

  int dateIndexSelected = 1;
  DateTime currentDate = DateTime.now();

  String _dayFormat(int dayWeek) {
    switch (dayWeek) {
      case 1:
        return "Mon";
        break;

      case 2:
        return "Tue";
        break;

      case 3:
        return "Wed";
        break;

      case 4:
        return "Thur";
        break;

      case 5:
        return "Fri";
        break;

      case 6:
        return "Sat";
        break;

      case 7:
        return "Sun";
        break;

      default:
        return "Sat";
    }
  }

  Widget _chairList() {
    Size size = MediaQuery.of(context).size;

    var _chairStatus = [
      [1, 1, 2, 2, 2, 3, 3, 1],
      [1, 1, 1, 1, 3, 1, 1, 1],
      [1, 1, 3, 2, 3, 3, 3, 1],
      [2, 2, 2, 1, 3, 2, 1, 1],
      [1, 1, 1, 1, 1, 3, 1, 1],
      [1, 1, 1, 1, 3, 3, 1, 1],
    ];
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          for (int i = 0; i < 6; i++)
            Container(
              margin: EdgeInsets.only(top: 1 == 3 ? size.height * 0.1 : 0),
              child: Row(
                children: [
                  for (int x = 0; x < 9; x++)
                    Expanded(
                      flex: x == 0 || x == 8 ? 2 : 1,
                      child: x == 0 ||
                              x == 8 ||
                              (i == 0 && x == 1) ||
                              (i == 0 && x == 7) ||
                              (x == 4)
                          ? Container()
                          : Container(
                              height: size.width / 9.5 - 12,
                              margin: const EdgeInsets.all(3.0),
                              child: _chairStatus[i][x - 1] == 1
                                  ? BuildChairs.availableChairs()
                                  : _chairStatus[i][x - 1] == 2
                                      ? BuildChairs.selectedChairs()
                                      : BuildChairs.reservedChairs(),
                            ),
                    )
                ],
              ),
            )
        ],
      ),
    );
  }

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
          toolbarHeight: 90,
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
                          builder: (context) => Details(movie: widget.movie)));
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Center(
                child: Column(
              children: <Widget>[
                const Text(
                  'Select Seats',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(widget.movie.title,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400)),
              ],
            )),
          ),
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Positioned(
                bottom: size.height * 0.02,
                child: SizedBox(
                  width: size.width,
                  child: _chairList(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38, vertical: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[700],
                        )),
                    const Text(
                      'Available',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(width: 10),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffffb43a),
                        )),
                    const Text(
                      'Selected',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    const SizedBox(width: 10),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        )),
                    const Text(
                      'Reserved',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height * 0.45,
                decoration: const BoxDecoration(
                    color: Color(0xff282731),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text('Select Date and Time',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: Colors.white,
                                  )),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: size.width,
                      height: 50,
                      child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var date = currentDate.add(Duration(days: index));
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                dateIndexSelected = index;
                              });
                            },
                            child: Container(
                              height: 80,
                              width: 90,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.0,
                                      color: index == dateIndexSelected
                                          ? Colors.black
                                          : Colors.white),
                                  color: dateIndexSelected == index
                                      ? const Color(0xffffb43a)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(date.day.toString(),
                                      style: TextStyle(
                                        color: index == dateIndexSelected
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 15,
                                      )),
                                  Text(
                                    _dayFormat(date.weekday),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: index == dateIndexSelected
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 50,
                            width: 80,
                            child: const Text(
                              '11:30',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 50,
                            width: 80,
                            child: const Text(
                              '13:00',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 50,
                            width: 80,
                            child: const Text(
                              '14:30',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 50,
                            width: 80,
                            child: const Text(
                              '16:30',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 8),
                          child: Column(
                            children: <Widget>[
                             const Text('Total Price',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white70,
                                )
                              ),
                              Text("\$43.55", style:Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white))
                            ],
                          ),
                        ),
                      
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  height: size.height * 0.08,
                                  width: size.width * 0.60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> TicketsPage()));
                          },
                                    child: TextButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  const Color(0xffffb43a)),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                          )),
                                      onPressed: () {},
                                      child: const Text(
                                        'Book Tickets',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class BuildChairs {
  static Widget selectedChairs() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          color: const Color(0xffffb43a),
          borderRadius: BorderRadius.circular(6.0)),
    );
  }

  static Widget availableChairs() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          color: Colors.grey[700], borderRadius: BorderRadius.circular(6.0)),
    );
  }

  static Widget reservedChairs() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.0)),
    );
  }
}
