import 'package:flutter/material.dart';

class category extends StatelessWidget {
  category({required this.img, this.color, this.text, this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;
  String? img;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: color,
          padding: EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          height: 250,
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 200, width: 200, child: Image.asset(img!)),
              Text(
                text!,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
