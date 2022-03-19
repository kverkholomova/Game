import 'package:better_page_turn/better_page_turn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game_screen.dart';


void main() {
  runApp(
    CupertinoApp(
      home: CupertinoPageScaffold(
        child: SafeArea(
          child: MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  HorizontalFlipPageTurnController horizontalFlipPageTurnController = HorizontalFlipPageTurnController();
  SliderPageTurnController sliderPageTurnController = SliderPageTurnController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Wrap(
        children: [
          Container(
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: LayoutBuilder(builder: (context, constraints) {
                return HorizontalFlipPageTurn(
                  children: [GameScreen(), GameScreen()],
                  cellSize: Size(constraints.maxWidth, 600),
                  controller: horizontalFlipPageTurnController,
                );
              }),
            ),
          ),
          /**Container(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: LayoutBuilder(builder: (context, constraints) {
                return SliderPageTurn(
                  children: [Colors.pink.value, Colors.teal.value, Colors.orange.value, Colors.indigo.value].map((e) => _buildWidget(e, Color(e))).toList(),
                  cellSize: Size(constraints.maxWidth, 200),
                  controller: sliderPageTurnController,
                );
              }),
            ),
          ),**/
          CupertinoButton(
            child: Text("turn left"),
            onPressed: () {
              horizontalFlipPageTurnController.animToLeftWidget();
              sliderPageTurnController.animToLeftWidget();
            },
          ),
          CupertinoButton(
            child: Text("turn right"),
            onPressed: () {
              horizontalFlipPageTurnController.animToRightWidget();
              sliderPageTurnController.animToRightWidget();
            },
          ),



        ],
      ),
    );
  }

  Widget _buildWidget(int position, Color color) {
    return Container(
      color: color,
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "0x${position.toRadixString(16).toUpperCase()}",
              style: TextStyle(
                color: Color(0xFF2e282a),
                fontSize: 40.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}