import 'package:aboutflutter/widgets/Drop_Down_Custom.dart';
import 'package:aboutflutter/widgets/Internet_Connection.dart';
import 'package:aboutflutter/widgets/ReorderableListView.dart';
import 'package:aboutflutter/widgets/animated_list_view.dart';
import 'package:aboutflutter/widgets/shared_Preference.dart';
import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aboutflutter/widgets/Country_Code_Picker.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:aboutflutter/widgets/Animated_Container.dart';
import 'package:aboutflutter/widgets/Image_With_error_and_loading_builder.dart';
import 'package:aboutflutter/widgets/Group_Messages_TimeStamp.dart';
import 'package:aboutflutter/Auth/phone_validation.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomButton(
                text: 'ReorderableListView',
                onPressed: (){
                  Get.to(ReorderableListViewScreen());
                },
            ),
            CustomButton(
                text: 'CountryCodePicker',
                onPressed: (){
                  Get.to(CountryCodePickerScreen());
                },
            ),
            CustomButton(
                text: 'AnimatedContainer',
                onPressed: (){
                  Get.to(AnimatedContainerScreen());
                },
            ),
            CustomButton(
                text: 'ImageWidget',
                onPressed: (){
                  Get.to(ImageWidgetScreen());
                },
            ),
            CustomButton(
                text: 'Shared Preference',
                onPressed: (){
                  Get.to(SharedPreferenceScreen());
                },
            ),
            CustomButton(
                text: 'DropDown Widget',
                onPressed: (){
                  Get.to(DropDownWidgetScreen());
                },
            ),
            CustomButton(
                text: 'Internet Connection',
                onPressed: (){
                  Get.to(InternetConnectionScreen());
                },
            ),
            CustomButton(
                text: 'Group Messages TimeStamp',
                onPressed: (){
                  Get.to(GroupMessagesTimeStampScreen());
                },
            ),
            CustomButton(
                text: 'Animated ListView',
                onPressed: (){
                  Get.to(AnimatedListViewBuilderWidget());
                },
            ),
            CustomButton(
                text: 'PhoneNumberValidation',
                onPressed: (){
                  Get.to(PhoneNumberValidation());
                },
            ),
          ],
        ),
      ),
    );
  }
}
