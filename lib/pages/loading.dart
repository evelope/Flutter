import 'package:flutter/material.dart';
import 'package:first_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: "北京", flag: "China.png", url: 'Asia/shanghai');
    await instance.getData();

    Navigator.pushNamed(context, "/home",arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDay': instance.isDay
    });

//
//    setState(() {
//      time = tt;
////      time = this.time;
//    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
////      body: Text("choose location"),
//      backgroundColor: Colors.grey[200],
//      appBar: AppBar(
//        backgroundColor: Colors.blue[900],
//        title: Text("选择地区"),
//        centerTitle: true,
//        elevation: 0,
//      ),
    backgroundColor: Colors.blue[900],
      body:Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 80.0,
        ),
      )

//      RaisedButton(
//        onPressed: () {
////          getData();
//          setState(() {
//            ++s;
//          });
//        },
//        child: Text("dian $s"),
//      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
