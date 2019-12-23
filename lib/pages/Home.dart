import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
//    data['isDay'] = false;
    String bgImage = data['isDay'] ? 'baitian.jpeg' : 'wan.jpeg';
    Color bgColor = data['isDay'] ? Colors.orange[300] : Colors.redAccent;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/$bgImage'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, "/location");
                  },
                  icon: Icon(Icons.edit_location,
                      color: data['isDay']?Colors.greenAccent :Colors.grey[300],
                  ),
                  label: Text("Location",
                  style: TextStyle(
                    color:data['isDay']?Colors.greenAccent:Colors.grey[300],
                  ),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(fontSize: 28, letterSpacing: 2,

                      color: data['isDay']?Colors.amberAccent[100] :Colors.grey[300],),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                data['time'],
                style: TextStyle(fontSize: 66,

                color:data['isDay']?Colors.blueAccent :Colors.grey[300],),
              )
            ],
          ),
        ),
      )),
    );
  }
}
