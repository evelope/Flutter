import 'package:flutter/material.dart';
import './card.dart';
import './list_data.dart';

// ----pppp---------
import 'pages/Home.dart';
import 'package:first_app/pages/choose_location.dart';
import 'package:first_app/pages/loading.dart';
// ----pppp---------

//import './stful.dart';

//void main() => runApp(MaterialApp(home: Homee()));
//void main() => runApp(MaterialApp(home: Listdata()));

// ----pppp---------
void main() => runApp(MaterialApp(
//  home: Home(),
initialRoute: "/",
routes: {
  "/":(context)=> Loading(),
  "/home":(context)=> Home(),
  "/location":(context)=> ChooseLocation()
},

));
// ----pppp---------

//stless 无状态 widget  //  stful 有状态 widget
//class Home extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return cardScaffold();

//      Scaffold(
//        appBar: AppBar(
//          title: Text("weiguifei-le"),
//          centerTitle: true,
//          backgroundColor: Colors.pink[400],
//        ),
//        body:
// flex 布局
//        Row(
//          children: <Widget>[
//            Expanded(
//              flex:5,
//                child: Image.network("https://images.pexels.com/photos/2868847/pexels-photo-2868847.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
//            ),
//            Expanded(// 类似 flex 1
//              flex: 3,
//              child: Container(
//                padding: EdgeInsets.all(20),
//                color: Colors.cyan,
//                child: Text("55"),
//              ),
//            ),
//            Container(
//              padding: EdgeInsets.all(20),
//              color: Colors.yellowAccent,
//              child: Text("66"),
//            ),
//            Expanded(
//              flex: 2,
//              child: Container(
//                padding: EdgeInsets.all(20),
//                color: Colors.cyanAccent,
//                child: Text("77"),
//              ),
//            ),Container(
//              padding: EdgeInsets.all(20),
//              color: Colors.red,
//              child: Text("88"),
//            ),
//
//          ],
//        ),

// 列

//        Column(
//          mainAxisAlignment: MainAxisAlignment.start,
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Text("heheheheh"),
//                Text("hahahaha")
//              ],
//            ),
//
//
//            Container(
//              padding: EdgeInsets.all(30),
//              color: Colors.blueAccent,
//              child: Text("2"),
//            ),
//
//
//            Column(
//              children: <Widget>[
//                Container(
//                  padding: EdgeInsets.all(30),
//                  color: Color(0xFFFF7F17),
//                  child: Text("33"),
//                ),
//              ],
//            ),
//            Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Container(
//                  padding: EdgeInsets.all(30),
//                  color: Colors.pink,
//                  child: Text("one"),
//                ),
//              ),
//            Container(
//              padding: EdgeInsets.all(30),
//              color: Colors.cyanAccent,
//              child: Text("444"),
//            ),
//          ],
//        ),

// 行
//        Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          crossAxisAlignment: CrossAxisAlignment.end,
//          children: <Widget>[
//            Text("helllll"),
//            FlatButton(
//              onPressed: (){},
//              color: Colors.pink,
//              child: Text("按钮"),
//            ),
//            Container(
//              color: Colors.blueAccent,
//              padding: EdgeInsets.all(20),
//              child: Text("内容"),
//            ),
//
//          ],
//        ),

//        Padding(padding: EdgeInsets.all(60),child:Text("hellow,padding")),

//        Container(
//          child: Text("Hello"),
//          color: Colors.pink,
////          padding: EdgeInsets.all(10),
////        padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
//          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//        ),

/* Center(

//          child: IconButton(
//            icon: Icon(Icons.add_a_photo),
//            onPressed: (){
//              print("meme");
//            },
//            color: Colors.pink,
//          ),
//
//          child: RaisedButton.icon(onPressed: (){},
//            icon: Icon(
//              Icons.ac_unit
//            ),
//            label: Text("me"),
//            color: Colors.pink,
//          ),

            //RaisedButton FlatButton(无影)
//            child: RaisedButton(
//                onPressed: () {
//                  print("茄子");
//                },
//                child: Text(
//                  "拍照",
//                  style: TextStyle(fontSize: 40, color: Colors.tealAccent),
//                ),
//                color: Colors.red)

//            child: Icon(
//              Icons.threed_rotation,
//              color: Colors.pinkAccent[200],
//              size: 100,
//            ),
            // child:
            // Image.asset("assets/img/pexels-photo-3312569.jpeg"),
            //Image.network("https://images.pexels.com/photos/2868847/pexels-photo-2868847.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            // child: Image(
            // 网络图片
            // image: NetworkImage("https://images.pexels.com/photos/2868847/pexels-photo-2868847.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            // image: AssetImage("assets/img/pexels-photo-3312569.jpeg"))

//          Text(
//            "Hellow flutter center",
//            style: TextStyle(
//                fontSize: 20.0,
//                fontWeight: FontWeight.w600,
//                letterSpacing: 3.0,
//                color: Colors.grey[700],
//                fontFamily: "HanaleiFill"),
//          ),

//            ),*/
//        floatingActionButton: FloatingActionButton(
//          backgroundColor: Colors.green[900],
//          child: Text("按钮"),
//        ));
//  }
//}

// widget: 设计不可变
// 无状态 widget  image

// 有状态 widget  checkbox

// ============================================================
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page1'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter = _counter + 3;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
