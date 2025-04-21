import 'package:flutter/material.dart';
import 'package:tuko/components/number_container.dart';
import 'package:tuko/components/phreas_container.dart';
import 'package:tuko/models/number.dart';
import 'package:tuko/models/phrases.dart';

class phrase extends StatelessWidget {
  phrase({super.key});
  final List<ph> phlist = [
    ph(
      entext: 'are you coming',
      jptext: 'Kimasu ka',
      audio: 'sounds/phrases/are_you_coming.wav',
    ),
    ph(
      entext: 'dont forget to subscribe ',
      jptext: 'Kōdoku o o wasurenaku',
      audio: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ph(
      entext: 'how are you feeling',
      jptext: 'Go kibun wa ikagadesu ka.',
      audio: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ph(
      entext: 'i love animal',
      jptext: 'Watashi wa dōbutsu ga daisukidesu',
      audio: 'sounds/phrases/i_love_anime.wav',
    ),
    ph(
      entext: 'i love programming ',
      jptext: 'Watashi wa puroguramingu ga daisukidesu',
      audio: 'sounds/phrases/i_love_programming.wav',
    ),
    ph(
      entext: 'programming is easy ',
      jptext: 'Puroguramingu wa kantan',
      audio: 'sounds/phrases/programming_is_easy.wav',
    ),
    ph(
      entext: 'what is your name ',
      jptext: 'Anata no namae wa nandesuka',
      audio: 'sounds/phrases/what_is_your_name.wav',
    ),
    ph(
      entext: 'where are you going ',
      jptext: 'Doko ni iku no',
      audio: 'sounds/phrases/where_are_you_going.wav',
    ),
    ph(
      entext: 'yes im coming',
      jptext: 'Hai, ikimasu',
      audio: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 22, 22, 22),

        title: Text(
          'phrases',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: ListView.builder(
        itemCount: phlist.length,
        itemBuilder: (context, index) {
          return PhreasContainer(
            num: phlist[index],
            color: Color.fromARGB(255, 167, 167, 167),
          );
        },
      ),
    );
  }
}
