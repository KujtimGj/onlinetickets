import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onlinetickets/body/moviecarousel.dart';
import 'package:onlinetickets/body/sortbar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101012),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 80,
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: Color(0xff101012)),
        backgroundColor: const Color(0xff101012),
        leading: null,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Text('Welcome 👋'),
            Text(
              "Let's find you favorite movie",
              style: TextStyle(color: Colors.white70, fontSize: 15),
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/picture.jpg'),
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Sortbar(),
            const SizedBox(height: 20),
            // const Cattext(),
            // const SizedBox(height: 10),
            // const Categories(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text('Showing this month',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white70)),
            ),
            const MovieCarousel(),
          ],
        ),
      ),
    );
  }
}
