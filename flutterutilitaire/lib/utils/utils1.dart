import 'package:flutter/material.dart';

class UtilFile extends StatefulWidget {
  @override
  _UtilFileState createState() => _UtilFileState();
}

class _UtilFileState extends State<UtilFile> {
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
          title: Text("Utilitaire 5"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            //Affichage premier resultat du datePicker
            resultdatepicker == null
                ? Text("La date n°1 est : vide")
                : Text("La date n°1 : " + "$resultdatepicker".split(' ')[0]),
            SizedBox(
              height: 15.0,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
            ),
            SizedBox(height: 40.0),
            //Affichage deuxième resultat du datePicker
            resultdatepicker2 == null
                ? Text("La date n°2 est : vide")
                : Text("La date est : " + "$resultdatepicker2".split(' ')[0]),

            SizedBox(height: 10.0),

            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () => _selectDate2(context),
              child: Text('Select date'),
            ),
            SizedBox(height: 70.0),

            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: _difference,
              child: Text('Voir la différence'),
            ),
            SizedBox(height: 40.0),
//Affichage différences
            diffDay == null
                ? Text(" ")
                : Text("Différence jours :  $diffDay " + " jours"),
            diffMonth == null
                ? Text(" ")
                : Text("Ce qui équivaut à :  $diffMonth" + " mois"),
            diffYear == null ? Text(" ") : Text("ou :  $diffYear" + " années"),
            diffHour == null ? Text(" ") : Text("ou :  $diffHour" + " H"),
            diffMin == null ? Text(" ") : Text("ou :  $diffMin" + " min"),
            diffSec == null ? Text(" ") : Text("ou :  $diffSec" + " sec"),
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
}
