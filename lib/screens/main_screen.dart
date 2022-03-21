import 'package:flutter/material.dart';


import 'game_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: Center(
                    child: Container(
                      width: 1400,
                      height: 350,
                      decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: NetworkImage("https://img.freepik.com/darmowe-wektory/quiz-w-komiksowym-stylu-pop-art_175838-505.jpg?size=626&ext=jpg"),
                              fit:BoxFit.fill
                          ),
                          border: Border.all(color: Colors.lightBlueAccent,width: 7)
                      ),
                    ),
                  ),
                ),
                /*const Padding(padding: EdgeInsets.only(top: 10),
                  child: Text("Play game!",style: TextStyle(color: Colors.blue,fontSize: 40, fontFamily: 'DancingScript')),
                ),*/

                Icon(Icons.arrow_right,size: 60)
              ],
            ),
          ],
        ),
      ),
    );
  }

}
