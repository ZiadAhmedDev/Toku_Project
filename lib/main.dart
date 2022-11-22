import 'package:flutter/material.dart';

import 'Screens/Home_Page.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
