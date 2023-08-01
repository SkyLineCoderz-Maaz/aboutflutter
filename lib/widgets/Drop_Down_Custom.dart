import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

class DropDownWidgetScreen extends StatefulWidget {
  const DropDownWidgetScreen({super.key});

  @override
  State<DropDownWidgetScreen> createState() => _DropDownWidgetScreenState();
}

class _DropDownWidgetScreenState extends State<DropDownWidgetScreen> {
  bool isOpen=false;
  String selectOption='Select Option';
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
        title: Text('DropDown Widget'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              InkWell(
                onTap: (){
                  isOpen=!isOpen;
                  setState(() {

                  });
                },
                child: Container(
                  height: 5.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:  Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 6.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(selectOption),
                        Icon(isOpen?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down),
                      ],
                    ),
                  ),
                ),
              ),
              if(isOpen)
              ListView(
                primary: true,
                shrinkWrap: true,
                children: fruitList.map((e) => Container(
                  decoration: BoxDecoration(
                    color: selectOption== e ?Colors.blueAccent : Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        selectOption=e;
                        isOpen=false;
                        setState(() {

                        });
                      },
                        child: Text(e)),
                  ),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
