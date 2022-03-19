
import 'package:flutter/material.dart';
import 'package:project/screens/intro.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'App',

      home: const IntroScreen(),
    );
  }
}