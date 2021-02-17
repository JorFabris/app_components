import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color  _color = Colors.blueAccent;

  bool _played = false;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated container page'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: _icon(),
        onPressed: () => {
          _played = (_played) ? false : true,
          _changeProperties(),
          },
        ),
    );
  }


  void _changeProperties() {
    final random = new Random();

      setState(() {

      var r = random.nextInt(255);
      var g = random.nextInt(255);
      var b = random.nextInt(255);

      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(r, g, b, 1);
      
      _borderRadius = new BorderRadius.circular(random.nextInt(100).toDouble());  

      _loop();
      });
  }

  void _loop(){
    if(_played){
      Future.delayed(Duration(milliseconds: 500),() => _changeProperties());
    }
  }

  Widget _icon(){

    Widget icon = Icon(Icons.play_arrow);

    setState(() {
      if(_played){ 
        icon =  Icon(Icons.pause);
      } else {
        icon = Icon(Icons.play_arrow);
      } 
    });

    return icon;

  }

}



