import 'package:aboutflutter/components/InternetConnection.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetConnectionScreen extends StatefulWidget {
  const InternetConnectionScreen({super.key});
  @override
  State<InternetConnectionScreen> createState() => _InternetConnectionScreenState();
}
class _InternetConnectionScreenState extends State<InternetConnectionScreen> {

  Connectivity connectivity=Connectivity();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Connection'),
        elevation: 0,
        centerTitle: true,
      ),
      body: StreamBuilder<ConnectivityResult>(
        stream: connectivity.onConnectivityChanged,
        builder: (_,snapshot){
          return InternetConnectionWidget(
            snapshot: snapshot,
            widget: ListView.builder(
              itemCount: 30,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text("Maaz " +index.toString()),
                  );
                },
            ),
          );
        },
      ),
    );
  }
}
