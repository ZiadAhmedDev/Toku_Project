import 'package:flutter/material.dart';
import 'package:toku/Screens/Numbers_Page.dart';

import '../Components/Category_items.dart';
import 'Colors_Page.dart';
import 'Family_Member.dart';
import 'PhrasesPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffEF9235),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'FamilyMembers',
            color: const Color(0xff558B37),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FamilyPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff79359F),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ColorPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff50ADC7),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
