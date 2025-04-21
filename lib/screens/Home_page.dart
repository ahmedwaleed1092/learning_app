import 'package:flutter/material.dart';
import 'package:tuko/components/category_item.dart';
import 'package:tuko/screens/NumberPage.dart';
import 'package:tuko/screens/colors_page.dart';
import 'package:tuko/screens/family_members_page.dart';
import 'package:tuko/screens/phrases.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 167, 167),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 22, 22, 22),
        title: Text(
          'Tuko',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              category(
                img: 'assets/IMG/Jogo pedagógico - Jogar, Contar e Somar.jpeg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Numberpage();
                      },
                    ),
                  );
                },
                text: 'Numbers',
                color: Color.fromARGB(255, 167, 167, 167),
              ),
              category(
                img:
                    'assets/IMG/How Family Relationships Shape Your Love Life.jpeg',

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return FamilyMembersPage();
                      },
                    ),
                  );
                },
                text: 'Family members ',
                color: Color.fromARGB(255, 167, 167, 167),
              ),
            ],
          ),
          Row(
            children: [
              category(
                img: 'assets/IMG/ac9db554-bb5a-4826-8fdf-406c032b7471.jpeg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ColorsPage();
                      },
                    ),
                  );
                },
                text: ' Colors ',
                color: Color.fromARGB(255, 167, 167, 167),
              ),
              category(
                img:
                    'assets/IMG/I am possible _ Motivational picture quotes, Design quotes, Picture quotes.jpeg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return phrase();
                      },
                    ),
                  );
                },
                text: ' Phrases ',
                color: Color.fromARGB(255, 167, 167, 167),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
