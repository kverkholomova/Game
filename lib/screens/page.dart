import 'package:better_page_turn/better_page_turn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appBar.dart';
import 'game_screen.dart';


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
     navigationBar: CupertinoNavigationBar(

     ),
      child: Wrap(
        children: [
          Stack(
            children:[
              Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: LayoutBuilder(builder: (context, constraints) {
                  return HorizontalFlipPageTurn(
                    children: const [GameScreen(), GameScreen()],
                    cellSize: Size(constraints.maxWidth, 600),
                    controller: horizontalFlipPageTurnController,
                  );
                }),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 300.0, left: 350),
                child: CupertinoButton(
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {
                    horizontalFlipPageTurnController.animToLeftWidget();
                    sliderPageTurnController.animToLeftWidget();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300.0, left: 20),
                child: CupertinoButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () {
                    horizontalFlipPageTurnController.animToRightWidget();
                    sliderPageTurnController.animToRightWidget();
                  },
                ),
              ),
            ]
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




        ],
      ),
    );
  }

}