import 'dart:async';
import 'dart:math';
import 'backgroundscreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(titleText: 'Good Morning ',
      childrenContent: [
        LayoutBuilder(
          builder: (context, constrains) {
            if (constrains.maxWidth > 600) {
              return Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 600.0,
                      child: TypewriterAnimatedTextKit(speed: Duration(milliseconds: 300,),
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "The Closed doors created to open",
                            "The Journey has no star ",
                            "The Journey has no end",
                            "The Journey has no star,The Journey has no end",
                          ],
                          textStyle: TextStyle(
                            fontSize: 70.0,
                            fontFamily: "Agne",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white38,
                          ),
                          textAlign: TextAlign.center,
                          alignment:
                          AlignmentDirectional.center // or Alignment.topLeft
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 300.0,
                      child: TypewriterAnimatedTextKit(speed: Duration(milliseconds: 300,),
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "The Closed doors created to open",
                            "The Journey has no star ",
                            "The Journey has no end",
                            "The Journey has no star,The Journey has no end",
                          ],
                          textStyle: TextStyle(
                            fontSize: 25.0,
//                            fontFamily: "Agne",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.black45,
                          ),
                          textAlign: TextAlign.center,
                          alignment:
                          AlignmentDirectional.center // or Alignment.topLeft
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ],
    );
  }
}









/*


 Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth > 600) {
            return Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 600.0,
                    child: TypewriterAnimatedTextKit(
                        onTap: () {
                          print("Tap Event");
                        },
                        text: [
                          "The Closed doors created to open",
                          "Design first, then code",
                          "Do not patch bugs out, rewrite them",
                          "Do not test bugs out, design them out",
                        ],
                        textStyle: TextStyle(
                          fontSize: 60.0,
                          fontFamily: "Agne",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.white10,
                        ),
                        textAlign: TextAlign.center,
                        alignment:
                            AlignmentDirectional.center // or Alignment.topLeft
                        ),
                  ),
                ),
              ],
            );
          } else {
            return Row(
              children: [
                Text(
                  'Small',
                  style: TextStyle(color: Colors.white30, fontSize: 100.0),
                ),
              ],
            );
          }
        },
      ),
    );
*
* */
