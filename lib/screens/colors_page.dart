import 'package:flutter/material.dart';
import 'package:tuko/components/number_container.dart';
import 'package:tuko/models/number.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});
  final List<item> nums = [
    item(
      audio: "sounds/colors/black.wav",
      image: 'assets/images/colors/color_black.png',
      jptext: 'Kuro',
      entext: 'black',
    ),
    item(
      audio: "sounds/colors/brown.wav",
      image: 'assets/images/colors/color_brown.png',
      jptext: 'Buromu',
      entext: 'browm',
    ),
    item(
      audio: "sounds/colors/dusty yellow.wav",
      image: 'assets/images/colors/color_dusty_yellow.png',
      jptext: 'Dasutiierō',
      entext: 'dusty yellow',
    ),
    item(
      audio: "sounds/colors/gray.wav",
      image: 'assets/images/colors/color_gray.png',
      jptext: 'Gurē',
      entext: 'gray',
    ),
    item(
      audio: "sounds/colors/green.wav",
      image: 'assets/images/colors/color_green.png',
      jptext: 'Midori',
      entext: 'green',
    ),
    item(
      audio: "sounds/colors/red.wav",
      image: 'assets/images/colors/color_red.png',
      jptext: 'Aka',
      entext: 'red',
    ),
    item(
      audio: "sounds/colors/white.wav",
      image: 'assets/images/colors/color_white.png',
      jptext: 'Shiro',
      entext: 'white',
    ),
    item(
      audio: "sounds/colors/yellow.wav",
      image: 'assets/images/colors/yellow.png',
      jptext: 'Kiiro',
      entext: 'yellow',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 22, 22, 22),
        title: Text(
          'colors',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: ListView.builder(
        itemCount: nums.length,
        itemBuilder: (context, index) {
          return num_container(
            num: nums[index],
            color: Color.fromARGB(255, 167, 167, 167),
          );
        },
      ),
    );
  }
}
