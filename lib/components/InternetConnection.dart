import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class InternetConnectionWidget extends StatelessWidget {
  final AsyncSnapshot<ConnectivityResult> snapshot;
  final Widget widget;
  const InternetConnectionWidget({Key? key,
    required this.widget,
    required this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch(snapshot.connectionState){
      case ConnectionState.active:
        final state=snapshot.data!;
        switch(state){
          case ConnectivityResult.none:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.wifi_off_rounded),
                Center(child: Text("Not Connected"),),
              ],
            );
          default:
            return widget;
        }
      default:
       return Text("");
    }
  }
}
