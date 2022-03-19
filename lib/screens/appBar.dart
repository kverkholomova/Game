import 'package:flutter/material.dart';
import 'package:project/screens/game_screen.dart';
import 'package:project/screens/main_screen.dart';

class MyAppBar extends AppBar{
  MyAppBar({ Key? key,  Widget? title})
      :super(key: key,title: title,actions: <Widget>[

    Expanded(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white,),
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                ); },

              );
            },
          ),

          title:  Text('Diary'),
          actions: [

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),

                child: InkWell(
                  child: Padding(padding: EdgeInsets.only(top: 20,right: 10),
                    child: Text("$point", style: TextStyle(color: Colors.white),),
                  ),

                )

            ),
          ],
          backgroundColor: Colors.black87,
          toolbarHeight: 60,
        ),


      ),
    ),



  ]);
}