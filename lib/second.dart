import 'package:flutter/material.dart';



class Secondclass extends StatefulWidget {
  const Secondclass({super.key});


  @override
  State<Secondclass> createState() => _SecondclassState();
}

class _SecondclassState extends State<Secondclass> {
  int _rating = 0;


  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
      return Row(
        children: [
          InkWell(
            child: Icon(Icons.link),
            onTap: (){
              //action code when clicked
              print("The icon is clicked");
            },
          )        ],

      );
  }
}
