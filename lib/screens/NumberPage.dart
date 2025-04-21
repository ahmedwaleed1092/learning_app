import 'package:flutter/material.dart';
import 'package:tuko/components/number_container.dart';
import 'package:tuko/models/number.dart';

class Numberpage extends StatelessWidget {
  Numberpage({Key? key}) : super(key: key);
  final List<item> nums = [
    item(
      audio: "sounds/numbers/number_one_sound.mp3",
      image: 'assets/images/numbers/number_one.png',
      jptext: 'ichi',
      entext: 'one',
    ),
    item(
      audio: "sounds/numbers/number_two_sound.mp3",
      image: 'assets/images/numbers/number_two.png',
      jptext: 'Ni',
      entext: 'two',
    ),
    item(
      audio: "sounds/numbers/number_three_sound.mp3",
      image: 'assets/images/numbers/number_three.png',
      jptext: 'san',
      entext: 'three',
    ),
    item(
      audio: "sounds/numbers/number_four_sound.mp3",
      image: 'assets/images/numbers/number_four.png',
      jptext: 'shi',
      entext: 'four',
    ),
    item(
      audio: "sounds/numbers/number_five_sound.mp3",
      image: 'assets/images/numbers/number_five.png',
      jptext: 'go',
      entext: 'five',
    ),
    item(
      audio: "sounds/numbers/number_six_sound.mp3",
      image: 'assets/images/numbers/number_six.png',
      jptext: 'Roku',
      entext: 'six',
    ),
    item(
      audio: "sounds/numbers/number_seven_sound.mp3",
      image: 'assets/images/numbers/number_seven.png',
      jptext: 'Sebun',
      entext: 'seven',
    ),
    item(
      audio: "sounds/numbers/number_eight_sound.mp3",
      image: 'assets/images/numbers/number_eight.png',
      jptext: 'hachi',
      entext: 'eight',
    ),
    item(
      audio: "sounds/numbers/number_nine_sound.mp3",
      image: 'assets/images/numbers/number_nine.png',
      jptext: 'Kyu',
      entext: 'nine',
    ),
    item(
      audio: "sounds/numbers/number_ten_sound.mp3",
      image: 'assets/images/numbers/number_ten.png',
      jptext: 'Ju',
      entext: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 22, 22, 22),
        title: Text(
          'Numbers',
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
