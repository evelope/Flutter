import 'package:flutter/material.dart';
import './widget_card.dart';
import 'datas.dart';

//stless 无状态 widget  //  stful 有状态 widget
class Listdata extends StatefulWidget {
  @override
  _ListdataState createState() => _ListdataState();
}

class _ListdataState extends State<Listdata> {
  List<Datas> datas = [
    Datas(text: "heillow word", author: "卫贵飞"),
    Datas(text: "heillow word22", author: "卫贵飞22"),
    Datas(text: "heillow word333", author: "卫贵飞33")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("个人卡片"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: datas
              .map((data) => DataCard(
                  data: data,
                  delete: () {
                    setState(() {
                      datas.remove(data);
                    });
                  }))
              .toList()),
    );
  }
}
