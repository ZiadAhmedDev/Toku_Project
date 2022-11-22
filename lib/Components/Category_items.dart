import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.ontap});
  String? text;
  Color? color;
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 150,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}
