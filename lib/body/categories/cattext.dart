import 'package:flutter/material.dart';


class Cattext extends StatelessWidget {
  const Cattext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15.0),
      child: Row( 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         const Text('Category', style:TextStyle(color: Colors.white70, fontSize: 16),),
         const Spacer(),
          GestureDetector(
            onTap: () {
             
            },
            child: RichText(
              text:  TextSpan(
                children: [
                  const TextSpan(text: 'See All', style: TextStyle(color: Color(0xffffb43a))),
                  WidgetSpan(child: Container(padding: const EdgeInsets.symmetric(horizontal:10.0),child: const Icon(Icons.arrow_forward_ios_rounded, size: 15,color: Color(0xffffb43a),)))
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
