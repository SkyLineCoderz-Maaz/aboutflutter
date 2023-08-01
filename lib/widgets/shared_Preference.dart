import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceScreen extends StatefulWidget {
  const SharedPreferenceScreen({Key?key}): super(key: key);

  @override
  State<SharedPreferenceScreen> createState() => _SharedPreferenceScreenState();
}

class _SharedPreferenceScreenState extends State<SharedPreferenceScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: SharedPreferences.getInstance(),
              builder: (context,snapshot){
                return Column(
                  children: [
                    Text(snapshot.data!.getString('name').toString()),
                    Text(snapshot.data!.getInt('age').toString()),
                    Text(snapshot.data!.getDouble('luckyNum').toString()),
                    Text(snapshot.data!.getBool('isLogin').toString()),
                  ],
                );
              }
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: ()async{
            SharedPreferences sharedPreferences=await SharedPreferences.getInstance();

            sharedPreferences.setInt('age', 20);
            sharedPreferences.setDouble('luckyNum', 5);
            sharedPreferences.setString('name', 'Maaz Shahid');
            sharedPreferences.setBool('isLogin', false);

            // print(sharedPreferences.getInt('age'));
            // print(sharedPreferences.getDouble('luckyNum'));
            // print(sharedPreferences.getString('name'));
            // print(sharedPreferences.getBool('isLogin'));

            setState(() {

            });
          },
        child: Icon(Icons.add),
      ),
    );
  }
}
