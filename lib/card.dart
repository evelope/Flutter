import 'package:flutter/material.dart';

//stless 无状态 widget  //  stful 有状态 widget
class Homee extends StatefulWidget {
  @override
  _HomeeState createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  int level = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("个人卡片"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(level);
            setState(() {
              ++level;
            });
          },
          backgroundColor: Colors.grey[800],
          child: Icon(
            Icons.add,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
//                backgroundImage: AssetImage("assets/img/avatar.png"),
                  backgroundImage: AssetImage("assets/img/avatar.png"),
                  radius: 40,
                ),
              ),
              Divider(
                height: 30,
                color: Colors.grey[800],
              ),
              Text(
                "姓名",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Text(
                "卫贵飞",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
              SizedBox(height: 30),
              Text(
                "公司",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Text(
                "好未来教育科技",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
              SizedBox(height: 30),
              Text(
                "等级",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Text(
                "p$level",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
              SizedBox(height: 30),
              Text(
                "岗位",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10),
              Text(
                "前端开发",
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    fontWeight: FontWeight.w600,
                    fontSize: 28),
              ),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text(
                    "wguifei@100tal.com",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 1),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
