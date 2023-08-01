import 'package:flutter/material.dart';

class ReorderableListViewScreen extends StatefulWidget {
  @override
  State<ReorderableListViewScreen> createState() =>
      _ReorderableListViewScreenState();
}

class _ReorderableListViewScreenState extends State<ReorderableListViewScreen> {
  List<String> fruitList = [
    'Apple',
    'Mango',
    'Orange',
    'WaterMelon',
    'PinApple'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReorderableListView'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ReorderableListView.builder(
          itemBuilder: (context, index) {
            return Card(
              key: ValueKey(fruitList[index]),
              child: ListTile(
                title: Text(fruitList[index]),
              ),
            );
          },
          itemCount: fruitList.length,
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex = newIndex - 1;
              }
              final element = fruitList.removeAt(oldIndex);
              fruitList.insert(newIndex, element);
            });
          }),
    );
  }
}
