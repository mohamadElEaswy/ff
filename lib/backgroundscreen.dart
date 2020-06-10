import 'package:flutter/material.dart';

/*My Main Screen Widget With Scaffold and Img*/
class BackgroundScreen extends StatefulWidget {
  final List<Widget> childrenContent; /*Body Content List*/
  BackgroundScreen({
    this.titleText,
    this.childrenContent,
  });
  final String titleText;

  @override
  _BackgroundScreenState createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.jpg"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor:
              Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
          appBar: AppBar(
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            title: Text(
              widget.titleText,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black12, // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0, // <-- ELEVATION ZEROED
          ),
          body: Stack(
            children: widget.childrenContent,
          ), // <-- Body List
        ),
      ],
    );
  }
}
