import 'package:flutter/material.dart';


class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/emojis/heart-eyes.png", "text": "Romance"},
      {"icon": "assets/emojis/laughing-emoji.png", "text": "Comedy"},
      {"icon": "assets/emojis/screaming-face.png", "text": "Horror"},
      {"icon": "assets/emojis/kissing-face.png", "text": "Drama"},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                    icon: categories[index]["icon"],
                    text: categories[index]["text"], 
                    press:(){},
                  ))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Column(
        
        children: <Widget>[
          SizedBox(
            width: 60,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color(0xff282731),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(icon),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
