import 'package:flutter/material.dart';
import 'package:project/screens/appBar.dart';


int point=0;
int number=1;

int count=3;
bool isvisible1=true;
bool isvisible2=true;
bool isvisible=true;


void changeVisibility(int c){
  if(c==2){
    isvisible=false;
    isvisible1=true;
    isvisible2=true;
  }
  else if(c==1){
    isvisible1=false;
    isvisible=false;
    isvisible2=true;
  }

}

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}


class _GameScreenState extends State<GameScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: MyAppBar(),
      body: SafeArea(
        child: Container(
            color: Colors.black,
            width: double.maxFinite,
            height: double.maxFinite,
            child:
            Center(
              child: Column(
                children: [
                  Stack(
                      alignment: Alignment.topCenter,
                      children: const <Widget>[
                        Image(image: NetworkImage("https://i.pinimg.com/originals/98/96/2f/98962f5d1a85e9d66646933f0c722dd9.jpg"),
                          fit: BoxFit.cover,

                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Text("about him. I didn't wanna know anything, but his voice. My life seems crached...", ),
                        ),
                      ]
                  ),

                ],
              ),
            )
        ),
      ),

    );

  }}



