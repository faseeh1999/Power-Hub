import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';
import 'package:power_hub/colors.dart';

class Anim extends StatefulWidget {
  @override
  _AnimState createState() => _AnimState();
}

class _AnimState extends State<Anim> {
  bool run = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kprimary,
      body: Center(
        child: Expanded(
            child: AnimatedDrawing.svg(
          "assets/light.svg",
          run: this.run,
          duration: new Duration(seconds: 3),
          height: size.height * 0.5,
          width: size.width * 0.5,
          onFinish: () => setState(() {
            this.run = false;
          }),
        )),
      ),
    );
  }
}
