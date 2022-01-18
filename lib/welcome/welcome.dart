import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff101012),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Color(0xff101012)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
                
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.05,),
              // ignore: avoid_unnecessary_containers
              Container(
                  child: const Image(
                image: AssetImage('assets/ticktransparent.png'),
              ),
            ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: size.width * 0.90,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.account_circle_sharp,
                        color: Colors.white10,
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.white12),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: size.width * 0.90,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock_rounded,
                        color: Colors.white10,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white10),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                height: 60,
                width: size.width * 0.90,
                decoration: BoxDecoration(
                    color: const Color(0xffdc262a),
                    borderRadius: BorderRadius.circular(25)),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Log In',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
