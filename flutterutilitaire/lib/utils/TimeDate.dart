import 'package:flutter/material.dart';

class Diff2Date extends StatefulWidget {
  @override
  _Diff2DateState createState() => _Diff2DateState();
}

class _Diff2DateState extends State<Diff2Date> {
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
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        resultdatepicker = picked;
      });
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime picked2 = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked2 != null && picked2 != selectedDate2)
      setState(() {
        selectedDate2 = picked2;
        resultdatepicker2 = picked2;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Temps écoulé entre deux dates", style: style2()),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            //Affichage premier resultat du datePicker
            resultdatepicker == null
                ? Text("La date n°1 est : vide", style: style())
                : Text(
                    "La date n°1 : " + "$resultdatepicker".split(' ')[0],
                    style: style(),
                  ),
            SizedBox(
              height: 16.0,
            ),
            // ignore: deprecated_member_use
            Container(
              width: 170,
              height: 40,
              child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black)),
                onPressed: () => _selectDate(context),
                child: Text('Select date', style: style2()),
              ),
            ),
            SizedBox(height: 28.0),
            //Affichage deuxième resultat du datePicker
            resultdatepicker2 == null
                ? Text("La date n°2 est : vide", style: style())
                : Text("La date est : " + "$resultdatepicker2".split(' ')[0],
                    style: style()),

            SizedBox(height: 16.0),

            // ignore: deprecated_member_use
            Container(
              width: 170,
              height: 40,
              child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black)),
                onPressed: () => _selectDate2(context),
                child: Text(
                  'Select date',
                  style: style2(),
                ),
              ),
            ),
            SizedBox(height: 40.0),

            // ignore: deprecated_member_use
            Container(
              //width: 170,
              height: 40,
              child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black)),
                onPressed: _difference,
                child: Text(
                  'Voir la différence entre la date 1 et la date 2',
                  style: style2(),
                ),
              ),
            ),
            SizedBox(height: 40.0),
//Affichage différences
            diffDay == null
                ? Text(" ")
                : Text("Différence jours :  $diffDay " + " jours",
                    style: style()),
            diffMonth == null
                ? Text(" ")
                : Text(
                    "Ce qui équivaut à :  $diffMonth" + " mois",
                    style: style(),
                  ),
            diffYear == null
                ? Text(" ")
                : Text(
                    "ou :  $diffYear" + " années",
                    style: style(),
                  ),
            diffHour == null
                ? Text(" ")
                : Text(
                    "ou :  $diffHour" + " H",
                    style: style(),
                  ),
            diffMin == null
                ? Text(" ")
                : Text(
                    "ou :  $diffMin" + " min",
                    style: style(),
                  ),
            diffSec == null
                ? Text(" ")
                : Text(
                    "ou :  $diffSec" + " sec",
                    style: style(),
                  ),
          ],
        )));
  }

//Fonction difference
  Future<void> _difference() async {
    final startTime = resultdatepicker;
    final currentTime = resultdatepicker2;

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
    print("Différence année:  $diffAn");
    print("Différence mois:  $diffMo");
    print("Différence jours:  $diffDy");
  }

  style() {
    return TextStyle(
        fontFamily: 'Avenir',
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: Colors.black);
  }

  style2() {
    return TextStyle(
        fontFamily: 'Avenir',
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: Colors.white);
  }
}
