import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlinetickets/account.dart';
import 'package:onlinetickets/body.dart';
import 'package:onlinetickets/favorites.dart';
import 'package:onlinetickets/splashscreen.dart';
import 'package:onlinetickets/tickets.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Body(),
    FavoritePage(),
    TicketsPage(),
    AccountPage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101012),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff101012),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: SizedBox(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset(
                    "assets/home.svg",
                    color: _selectedIndex == 0? Colors.white : Colors.grey[500],
                  ),
                )),
             BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.favorite, size: 25,color: _selectedIndex == 1? Colors.white : Colors.grey[500],),
            ),
             BottomNavigationBarItem(
                label: '',
                icon: ImageIcon(
                  const AssetImage('assets/plane-tickets.png',),
                  color: _selectedIndex == 2? Colors.white : Colors.grey[500],
                )),
             BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.account_circle_rounded, size: 25,color: _selectedIndex == 3? Colors.white : Colors.grey[500],),
            ),
          ],
        ),
      ),
    );
  }
}
