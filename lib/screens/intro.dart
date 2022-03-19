import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:project/screens/slide_puzzle.dart';

import 'game_screen.dart';


class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: const Image(image: NetworkImage("https://i.pinimg.com/originals/ce/d1/5a/ced15aba811c18406de4d27ec06f381b.jpg"),
                fit: BoxFit.cover,
              ),
            ),
        SizedBox(
          width: double.infinity,
          height: 70,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 17.0,
              fontFamily: 'Bobbers',
            ),
            child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('It is not enough to do your best, you must know what to do, and then do your best'),

                  TyperAnimatedText('- W.Edwards Deming'),
                ],
              pause: Duration(seconds: 10),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,

          ),
        ),
      ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
            width: double.infinity,
                height: 370,
                child: Image(image: NetworkImage("https://i.pinimg.com/originals/ce/d1/5a/ced15aba811c18406de4d27ec06f381b.jpg"),
                  fit: BoxFit.cover,
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 300.0),
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const IntroScreen01()),
                      );
                    },
                    backgroundColor: Colors.green,
                    child: const Icon(Icons.arrow_forward),
                  ),
                ),
              ]
              ),
            ]
        ),
      ),
    );
  }

}

class IntroScreen01 extends StatefulWidget {
  const IntroScreen01({Key? key}) : super(key: key);

  @override
  State<IntroScreen01> createState() => _IntroScreen01State();
}

class _IntroScreen01State extends State<IntroScreen01> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: const Image(image: AssetImage("images/Maeve Wiley.png"),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 70,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 17.0,
                    fontFamily: 'Bobbers',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('It is not enough to do your best, you must know what to do, and then do your best'),

                      TyperAnimatedText('- W.Edwards Deming'),
                    ],
                    pause: Duration(seconds: 10),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,

                  ),
                ),
              ),
              Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        height: 370,
                        child: Image(image: NetworkImage("https://thumbs.dreamstime.com/b/pretty-sad-girl-long-hair-vintage-monochrome-style-isolated-vector-illustration-162135351.jpg"),
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 300.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  SlidePuzzle()),
                          );
                        },
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ]
              ),
            ]
        ),
      ),
    );
  }

}
