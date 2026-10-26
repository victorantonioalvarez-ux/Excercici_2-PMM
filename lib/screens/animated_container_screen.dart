import 'package:flutter/material.dart';
import 'dart:math';


class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contenidor Animat")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds:1000),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius, 
            color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => _randomContainer(),
      ),
    );
  }
  void _randomContainer(){
    final random = Random();
    setState(() {
     _width = random.nextInt(300).toDouble();
     _height = random.nextInt(300).toDouble();
     _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1
     );
     _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
   });
 }
}

