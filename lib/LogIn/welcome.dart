import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onlinetickets/SignUp/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff101012),
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xff101012)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0.5,
      ),
      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              SizedBox(height: size.height * 0.05),
              const Image(
                image: AssetImage('assets/ticktransparent.png'),
              ),
              Container(
                alignment: Alignment.center,
                height: 60,
                width: size.width * 0.90,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
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
                  borderRadius: BorderRadius.circular(25),
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
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.white10,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
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
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account ? ",
                    style:
                        TextStyle(color: Color(0xff9e2326), letterSpacing: 0.5),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignUp()));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xffdc262a)),
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
