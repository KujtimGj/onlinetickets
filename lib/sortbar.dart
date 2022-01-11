import 'package:flutter/material.dart';


class Sortbar extends StatelessWidget {
  const Sortbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
         Container(
               alignment: Alignment.center,
               padding: const EdgeInsets.symmetric(horizontal: 20),
               margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width:size.width * 0.90,
                decoration: BoxDecoration(
                  color: const Color(0xff191a1b),
                  borderRadius: BorderRadius.circular(30),
                ),
                child:const TextField(
                  style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal, fontSize: 17),
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(color: Colors.white10),
                    icon: Icon(Icons.search, color: Colors.white10, size: 30,),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ) ,
              ),
      ],
    );
  }
}
