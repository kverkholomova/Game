

import 'package:flutter/material.dart';

class SlidePuzzle extends StatefulWidget {
  const SlidePuzzle({Key? key}) : super(key: key);

  @override
  State<SlidePuzzle> createState() => _SlidePuzzleState();
}

class _SlidePuzzleState extends State<SlidePuzzle> {

  int valueSlider=2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              // make 2 column, 1 for puzzle box, 2nd for button testing

              Container(
                margin: EdgeInsets.all(10),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      width: 400,
                      height: 600,
                      child: const Image(
                        image: AssetImage("images/Maeve Wiley.png"),
                      ),
                    );
                  }),


              ),
              /**SliderTheme(
                data: const SliderThemeData(
                  thumbShape: RoundSliderThumbShape(),
                ),
                child: Slider(
                  min: 2,
                    max: 15,
                    activeColor: Colors.green,
                    thumbColor: Colors.green,
                    inactiveColor: Colors.greenAccent,

                    value: valueSlider.toDouble(),
                    onChanged: (value){
                      setState(() {
                        valueSlider=value.toInt();
                      });
                    }),
              )**/

            ],

          ),

        ),
      ),
    );
  }
}