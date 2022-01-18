import 'package:flutter/material.dart';

class TicketsPage extends StatelessWidget {
  TicketsPage({Key? key}) : super(key: key);

  List<dynamic> tickets = [
    {
      "movie": "assets/moviecovers/spiderman.jpg",
      "title": "Spider-Man:No way home",
      "Date": "18.01.22",
      "time": "16:30",
      "seats": "E4,E5"
    },
    {
      "movie": "assets/moviecovers/american-sniper.jpg",
      "title": "American Sniper",
      "Date": "30.01.22",
      "time": "11:30",
      "seats": "B6,B7"
    },
    {
      "movie": "assets/moviecovers/interstellar.jpg",
      "title": "Interstellar",
      "Date": "22.02.22",
      "time": "16:30",
      "seats": "E4,E5"
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff101012),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0xff101012),
        title: const Text('Tickets'),
      ),
      body: ListView.builder(
          itemCount: tickets.length,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xff191a1b),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 130,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xff191a1b),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(tickets[index]["movie"]))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: Text(
                          tickets[index]["title"],
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: Colors.white, fontSize: 17),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Date',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white70, fontSize: 13),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                tickets[index]["Date"],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            children: <Widget>[
                              Text(
                                "Time",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white70, fontSize: 13),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                tickets[index]["time"],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            children: <Widget>[
                              Text(
                                "Seats",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.white70, fontSize: 13),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                tickets[index]["seats"],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: size.width * 0.36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: const DecorationImage(
                                image: AssetImage('assets/qrcode.jpg'),
                                fit: BoxFit.cover)),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
