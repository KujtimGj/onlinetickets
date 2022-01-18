import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff101012),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff101012),
        leading: null,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                      image: AssetImage('assets/picture.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              'Kujtim Gjokaj',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 80,
            width: size.width * 0.85,
            decoration: BoxDecoration(
                color: const Color(0xff191a1b),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.white70,
                  )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Login Details',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white70, fontSize: 20),
                    ),
                    Text(
                      'User name, Password',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.white60),
                    )
                  ],
                ),
                SizedBox(
                  width: size.width * 0.20,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 80,
            width: size.width * 0.85,
            decoration: BoxDecoration(
                color: const Color(0xff191a1b),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Icon(
                    Icons.headset_mic,
                    color: Colors.white70,
                  )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Help',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white70, fontSize: 20),
                    ),
                    Text(
                      'FAQs, Help Desk',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white60),
                    )
                  ],
                ),
                SizedBox(
                  width: size.width * 0.28,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 80,
            width: size.width * 0.85,
            decoration: BoxDecoration(
                color: const Color(0xff191a1b),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.white70,
                  )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Privacy Policy',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white70, fontSize: 20),
                    ),
                    Text(
                      'Terms and Conditions',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white60),
                    )
                  ],
                ),
                SizedBox(
                  width: size.width * 0.19,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white70,
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 80,
            width: size.width * 0.85,
            decoration: BoxDecoration(
                color: const Color(0xff191a1b),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Icon(
                    Icons.logout_outlined,
                    color: Colors.white70,
                  )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Log Out',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white70, fontSize: 20),
                    ),
                    // Text('User name, Password', style:Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white60 ) ,)
                  ],
                ),
                                  SizedBox(
                    width: size.width*0.35,
                  ),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white70,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
