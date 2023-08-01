import 'package:aboutflutter/components/imageBuilderWidget.dart';
import 'package:flutter/material.dart';

class ImageWidgetScreen extends StatelessWidget {
  const ImageWidgetScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ImageBuilderWidget(
        image: "https://images.pexels.com/photos/3932948/pexels-photo-3932948.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      )
    );
  }
}

