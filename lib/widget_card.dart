import 'package:flutter/material.dart';
import 'datas.dart';
//Widget dataTemplate(data) {
//  return DataCard(data);
//}

class DataCard extends StatelessWidget {
  //final 无状态 初始化
  final Datas data;
  final Function delete;
  DataCard({this.data, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              data.author,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 6),
            Text(
              data.text,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 8,
            ),
            FlatButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete_forever),
              label: Text("del"),
            )
          ],
        ),
      ),
    );
  }
}
