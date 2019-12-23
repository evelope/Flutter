import 'package:first_app/services/world_time.dart';
import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int s = 0;

  List <WorldTime> locations= [];

  void getData() async {
//    await Future.delayed(Duration(seconds: 3),(){
//      print("1111");
//    });
//
//    print("2222");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

//    getData();

//    print(" run initState ");
  }

  @override
  Widget build(BuildContext context) {
//    print(" run build ");

    return Scaffold(
//      body: Text("choose location"),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("选择地区"),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            ++s;
          });
        },
        child: Text("dian"),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
//    print(" run dispose ");
  }
}
