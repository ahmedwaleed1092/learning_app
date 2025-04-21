import 'package:flutter/material.dart';
import 'package:tuko/components/number_container.dart';
import 'package:tuko/models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});
  final List<item> nums = [
    item(
      audio: "sounds/family_members/father.wav",
      image: 'assets/images/family_members/family_father.png',
      jptext: 'chichioya',
      entext: 'father',
    ),
    item(
      audio: "sounds/family_members/mother.wav",
      image: 'assets/images/family_members/family_mother.png',
      jptext: 'Hahaoya',
      entext: 'mother',
    ),
    item(
      audio: "sounds/family_members/older sister.wav",
      image: 'assets/images/family_members/family_older_sister.png',
      jptext: 'Ane',
      entext: 'older sister',
    ),
    item(
      audio: "sounds/family_members/older bother.wav",
      image: 'assets/images/family_members/family_older_brother.png',
      jptext: 'Ani',
      entext: 'older brother',
    ),
    item(
      audio: "sounds/family_members/grand mother.wav",
      image: 'assets/images/family_members/family_grandfather.png',
      jptext: 'Sobo',
      entext: 'grandmother',
    ),
    item(
      audio: "sounds/family_members/grand father.wav",
      image: 'assets/images/family_members/family_grandfather.png',
      jptext: 'Sofu',
      entext: 'grand father',
    ),
    item(
      audio: "sounds/family_members/daughter.wav",
      image: 'assets/images/family_members/family_daughter.png',
      jptext: 'Musume',
      entext: 'daughter',
    ),
    item(
      audio: "sounds/family_members/son.wav",
      image: 'assets/images/family_members/family_son.png',
      jptext: 'Musuko',
      entext: 'son',
    ),
    item(
      audio: "sounds/family_members/younger brohter.wav",
      image: 'assets/images/family_members/family_younger_brother.png',
      jptext: 'Otōto',
      entext: 'younger brother',
    ),
    item(
      audio: "sounds/family_members/younger sister.wav",
      image: 'assets/images/family_members/family_younger_sister.png',
      jptext: 'Imōto',
      entext: 'younger sister',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 22, 22, 22),
        title: Text(
          'family member',
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
