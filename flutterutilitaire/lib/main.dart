import 'package:flutter/material.dart';
import 'package:flutterutilitaire/Annimations/Annimations.dart';
import 'package:flutterutilitaire/utils/Age.dart';
import 'package:flutterutilitaire/utils/AireConvertor.dart';
import 'package:flutterutilitaire/utils/AudioPlayer.dart';
import 'package:flutterutilitaire/utils/Distance.dart';
import 'package:flutterutilitaire/utils/Promotion.dart';
import 'package:flutterutilitaire/utils/RomanConvertor.dart';
import 'package:flutterutilitaire/utils/SizeFileConvertor.dart';
import 'package:flutterutilitaire/utils/TempConvertor.dart';
import 'package:flutterutilitaire/utils/TimeDate.dart';
import 'package:flutterutilitaire/utils/ValNum.dart';
import 'package:provider/provider.dart';

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
      home: MyHomePage(
        title: 'Utilitaires',
      ),
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
          backgroundColor: Colors.black,
          title: Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              DrawerHeader(
                child: Container(
                    height: 142,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/logo.jpg",
                    )),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tmp = 2;
                  });
                },
                child: Text(
                  'Liste',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tmp = 1;
                  });
                },
                child: Text(
                  'Card',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tmp = 3;
                  });
                },
                child: Text(
                  'Grid',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'By Jennifer, Alexis, Boubacar & Hugo ®',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 14,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
        body: GridView.count(
          physics: BouncingScrollPhysics(),
          //primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: tmp,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, SlideRightRoute(page: UtilFile2()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.file_upload, size: 40, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        "Convertisseur de taille de fichier",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, ScaleRoute(page: Dnd2()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.date_range, size: 40),
                      SizedBox(height: 10),
                      Text(
                        "Connaitre mon âge",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, RotationRoute(page: Promotion()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.calculate, size: 40, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        "Calcul de promotion",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, SizeRoute(page: Diff2Date()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.timer, size: 40),
                      SizedBox(height: 10),
                      Text(
                        "Temps écoulé entre deux   dates",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, FadeRoute(page: ConvertDistance()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.location_city_sharp,
                          size: 40, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        "Convertisseur de distance",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, ScaleRotateRoute(page: ConvertNum()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.confirmation_number, size: 40),
                      SizedBox(height: 10),
                      Text(
                        "Convertisseur de valeur numérique",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, FadeRoute(page: UtilFile8()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.crop_square,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Convertisseur d'aires",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, ScaleRoute(page: TemperatureCalcul()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.thermostat_outlined, size: 40),
                      SizedBox(height: 10),
                      Text(
                        "Convertisseur de température",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, RotationRoute(page: Dectoroman()));
              },
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.book,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Convertisseur décimal en chiffre Romain",
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.black,
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
                      Text(
                        "Lecteur de musique",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                color: Colors.grey,
              ),
            ),
          ],
        ));
  }
}
