import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  @override
  State createState() => new LoaderState();
}

class LoaderState extends State<Loader> with SingleTickerProviderStateMixin {

  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(duration: new Duration(milliseconds: 1750), vsync: this);
    animation = new CurvedAnimation(parent: animationController, curve: Curves.elasticOut)
      ..addListener(() => this.setState(() {}))
      ..addStatusListener((AnimationStatus status) {
      });
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          color: Colors.white,
          width: animation.value * 100.0,
          height: 3.0,
        ),
        new Padding(padding: new EdgeInsets.only(bottom: 5.0),),
        new Container(
          color: Colors.white,
          width: animation.value * 75.0,
          height: 3.0,
        ),
        new Padding(padding: new EdgeInsets.only(bottom: 5.0),),
        new Container(
          color: Colors.white,
          width: animation.value * 50.0,
          height: 3.0,
        ),
        new Padding(padding: new EdgeInsets.only(bottom: 5.0),),
      ],
    );
  }
}