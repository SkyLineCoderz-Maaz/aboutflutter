import 'dart:math';
import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  late double height = 20.h;
  late double width = 100.w;
  Color color = Colors.green;
  BorderRadiusGeometry radiusGeometry = BorderRadius.circular(12.sp);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: color,
                borderRadius: radiusGeometry,
              ),
              duration: Duration(seconds: 3),
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final random = Random();
          height = random.nextInt(300).toDouble();
          width = random.nextInt(300).toDouble();
          color = Color.fromRGBO(
              random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
          radiusGeometry = BorderRadius.circular(random.nextInt(70).toDouble());
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
