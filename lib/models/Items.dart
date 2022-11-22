import 'package:flutter/cupertino.dart';

class Items {
  const Items(
      {@required this.image,
      required this.jpName,
      required this.enName,
      required this.sound});
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
}
