import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/Items.dart';

class ListItems extends StatelessWidget {
  const ListItems({
    super.key,
    required this.item,
    required this.color,
    required this.soundType,
  });
  final Items item;
  final Color color;
  final String soundType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(item.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                final player = AudioCache(prefix: 'assets/sounds/$soundType/');
                player.play(item.sound);
              } catch (ex) {
                print('ex');
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 32,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
