import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDay;

  WorldTime({this.flag, this.location, this.url});
  Future<String> getData() async {
    try {
      // httprequire
//    Response response =  await get("https://jsonplaceholder.typicode.com/todos/1");
      Response response =
          await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      print("$datetime     $offset");

      // 创建时间对象
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

//      time = now.toString();


      isDay = now.hour > 6 && now.hour < 18 ? true : false;
      time = DateFormat.jm().format(now);
      return time;
    }
    catch (e) {
      print(e);
      time = "error";
      return time;
    }
  }
}
