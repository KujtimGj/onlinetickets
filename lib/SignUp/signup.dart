import 'package:flutter/material.dart';
import 'package:onlinetickets/SignUp/ordivider.dart';
import 'package:onlinetickets/SignUp/socialicon.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff101012),
      appBar: AppBar(
        toolbarHeight: 0.5,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height*0.05),
            Container(
              height: size.height * 0.33,
              width: size.width * 0.85,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('assets/ticktransparent.png'),
                  fit: BoxFit.cover
                )
              ),
              ),
              SizedBox(height: size.height * 0.045,),
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
            SizedBox(height: size.height * 0.03),
            Container(
              height: 60,
              width: size.width * 0.90,
              decoration: BoxDecoration(
                  color: const Color(0xffdc262a),
                  borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account ? ",
                  style:
                      TextStyle(color: Color(0xff9e2326), letterSpacing: 0.5),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(color: Color(0xffdc262a)),
                  ),
                )
              ],
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/svg/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/svg/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/svg/google.svg",
                  press: () {},
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01)
          ],
        ),
      ),
    );
  }
}
