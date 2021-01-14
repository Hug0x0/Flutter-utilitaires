import 'package:flutter/material.dart';

class Ddn extends StatefulWidget {
  @override
  _DdnState createState() => _DdnState();
}

class _DdnState extends State<Ddn> {
  int age = 0;
  var yearOfBirth = '0';

  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990, 8),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        selectedDate.year;
        age = 2021 - selectedDate.year;
        print(age);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Age Calculator'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("${selectedDate.toLocal()}".split(' ')[0]),
                  SizedBox(
                    height: 20.0,
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    onPressed: () => _selectDate(context),
                    child: Text('Select date'),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text('Vous allez avoir $age ans cette année  !'),
          ),
        ],
      ),
    );
  }
}

class Dnd2 extends StatefulWidget {
  @override
  _Dnd2State createState() => _Dnd2State();
}

class _Dnd2State extends State<Dnd2> {
  //Déclaration variables
  var resultdatepicker;
  var resultdatepicker2;
  var diffYear;
  var diffMonth;
  var diffDay;
  var diffHour;
  var diffMin;
  var diffSec;
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
//Fonction Date Picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        resultdatepicker = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Utilitaire 3 :  Date de Naissance"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            //Affichage premier resultat du datePicker
            resultdatepicker == null
                ? Text("Votre date de naissance : vide")
                : Text(
                    "Date de naissance : " + "$resultdatepicker".split(' ')[0]),
            SizedBox(
              height: 15.0,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
            ),
            SizedBox(height: 40.0),

            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: _difference,
              child: Text('Connaitre mon âge'),
            ),
            SizedBox(height: 40.0),
//Affichage différences
            diffDay == null
                ? Text(" ")
                : Text(
                    "Vous avez vu le jours depuis :    $diffDay " + " jours"),
            SizedBox(height: 25.0),
            diffMonth == null
                ? Text(" ")
                : Text("                    Ce qui équivaut à :   $diffMonth" +
                    " mois"),
            SizedBox(height: 10.0),
            diffYear == null ? Text(" ") : Text("ou :  $diffYear" + " années"),
            SizedBox(height: 10.0),
            diffHour == null ? Text(" ") : Text("ou :  $diffHour" + " heures"),
            SizedBox(height: 10.0),
            diffMin == null ? Text(" ") : Text("ou :  $diffMin" + " minutes"),
            SizedBox(height: 10.0),
            diffSec == null ? Text(" ") : Text("ou :  $diffSec" + " secondes"),
          ],
        )));
  }

//Fonction difference entre la date de naissance de l'user et la date d'aujourd'hui
  Future<void> _difference() async {
    final startTime = resultdatepicker;
    final currentTime = DateTime.now();

    final diffAn = currentTime.difference(startTime).inDays / 365;
    final diffMo = currentTime.difference(startTime).inDays / 30.417;
    final diffDy = currentTime.difference(startTime).inDays;
    final diffHr = currentTime.difference(startTime).inHours;
    final diffMn = currentTime.difference(startTime).inMinutes;
    final diffSc = currentTime.difference(startTime).inSeconds;
    setState(() {
      diffYear = diffAn.toStringAsFixed(3);
      diffMonth = diffMo.toStringAsFixed(2);
      diffDay = diffDy;
      diffHour = diffHr;
      diffMin = diffMn;
      diffSec = diffSc;
    });
  }
}
