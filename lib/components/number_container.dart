import 'package:flutter/material.dart';
import 'package:tuko/models/number.dart';
import 'package:audioplayers/audioplayers.dart';

class num_container extends StatelessWidget {
  const num_container({super.key, required this.num, required this.color});
  final item num;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(num.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  num.jptext,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  num.entext,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                AudioPlayer audioPlayer = AudioPlayer();
                Source sc = AssetSource(num.audio);
                // print(sc);
                audioPlayer.play(sc);
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
