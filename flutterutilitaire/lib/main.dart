import 'package:flutter/material.dart';
import 'package:flutterutilitaire/utils/utils11.dart';
import 'package:flutterutilitaire/utils/utils3.dart';
import 'package:flutterutilitaire/utils/utils4.dart';
import 'package:flutterutilitaire/utils/utils5.dart';
import 'package:flutterutilitaire/utils/utils6.dart';
import 'package:flutterutilitaire/utils/utils7.dart';
import 'package:flutterutilitaire/utils/utils8.dart';
import 'package:flutterutilitaire/utils/utils8t.dart';
import 'package:flutterutilitaire/utils/utils1.dart';

import 'utils/utils8A.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Utilitaire',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Utilitaires'),
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
  int tmp = 3;
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
                title: Text('Liste'),
                onTap: () {
                  setState(() {
                    tmp = 2;
                  });
                },
              ),
              ListTile(
                title: Text('Card'),
                onTap: () {
                  setState(() {
                    tmp = 1;
                  });
                },
              ),
              ListTile(
                title: Text('Grid'),
                onTap: () {
                  setState(() {
                    tmp = 3;
                  });
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
          crossAxisCount: tmp,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UtilFile2()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.file_upload, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 1 : Convertisseur de taille de fichier"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Dnd2()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.date_range, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 2 : Connaitre mon âge"),
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
                      Icon(Icons.calculate, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 3 : Calcul de promotion"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Diff2Date()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.timer, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 4 : Temps écoulé entre deux dates"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ConvertDistance()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.location_city_sharp, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 5 : Convertisseur de distance"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ConvertNum()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.confirmation_number, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 6 : Convertisseur de valeur numérique"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UtilFile8()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.crop_square, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 7 : Convertisseur D'aires"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TemperatureCalcul()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.thermostat_outlined, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 8 : Convertisseur de température"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dectoroman()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.book,
                        size: 40,
                      ),
                      SizedBox(height: 10),
                      Text(
                          "Utilitaire 9 : Convertisseur décimal en chiffre Romain"),
                    ],
                  ),
                ),
                color: Colors.teal[100],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Audio()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.surround_sound, size: 40),
                      SizedBox(height: 10),
                      Text("Utilitaire 10 : Lecteur de musique"),
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
