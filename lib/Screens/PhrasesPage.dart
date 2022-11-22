import 'package:flutter/material.dart';
import '../Components/List_Phrases.dart';
import '../models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrase> phrases = const [
    Phrase(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
    ),
    Phrase(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukidesu',
      enName: 'i love  programming',
    ),
    Phrase(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu ',
      enName: 'programming is easy',
    ),
    Phrase(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    Phrase(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
    ),
    Phrase(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Phrase(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling?',
    ),
    Phrase(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming?',
    ),
    Phrase(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: 'yes i am coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return ListPhrases(
              soundType: 'phrases',
              color: const Color(0xff50ADC7),
              item: phrases[index]);
        },
      ),
    );
  }
}
