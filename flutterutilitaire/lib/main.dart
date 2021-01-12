import 'package:flutter/material.dart';
import 'package:flutterutilitaire/utils/utils1.dart';
import 'package:flutterutilitaire/utils/utils3.dart';
import 'package:flutterutilitaire/utils/utils4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UtilFile()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 1"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("");
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 2"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ddn()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 3"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Promotion()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 4"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("");
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 5"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("");
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 6"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("");
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 7"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("");
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 8"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("");
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 9"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                print("");
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Text("Utilitaire 10"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
          ],
        ));
  }
}
