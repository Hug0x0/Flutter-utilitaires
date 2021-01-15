import 'package:flutter/material.dart';
import 'package:age/age.dart';
import 'package:intl/intl.dart';

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
  var nextbirthday;
  var nextbirthday2;
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
          backgroundColor: Colors.black,
          title: Text(
            "Connaitre mon âge",
            style: TextStyle(
              fontFamily: 'Avenir',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 75.0,
            ),
            //Affichage premier resultat du datePicker
            resultdatepicker == null
                ? Text(
                    "Votre date de naissance : vide",
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )
                : Text(
                    "Date de naissance : " + "$resultdatepicker".split(' ')[0],
                    style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 170,
              height: 40,
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black)),
                onPressed: () => _selectDate(context),
                child: Text(
                  'Select date',
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              width: 170,
              height: 40,
              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.black)),
                onPressed: _difference,
                child: Text(
                  'Connaitre mon âge',
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 40.0),
            //Affichage différences
            diffDay == null
                ? Text(" ")
                : Text(
                    "Vous avez vu le jours depuis :    $diffDay " + " jours",
                    style: style(),
                  ),
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
            SizedBox(height: 38.0),
            nextbirthday == null
                ? Text(" ")
                : Text("Votre prochain anniversaire sera le  $nextbirthday",
                    style: style()),
            SizedBox(height: 20.0),
            nextbirthday == null
                ? Text(" ")
                : Text(
                    "Votre prochain anniversaire sera exactement dans  $nextbirthday2",
                    style: style()),
          ],
        )));
  }

//Fonction difference entre la date de naissance de l'user et la date d'aujourd'hui
  Future<void> _difference() async {
    _birthday();
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

  // fonction anniversaire
  void _birthday() {
    DateTime birthday = resultdatepicker;
    DateTime today = DateTime.now();

    AgeDuration age;

    // Find out your age
    age = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);

    print('Your age is $age');

    DateTime tempDate = DateTime(today.year, birthday.month, birthday.day);
    DateTime nextBirthdayDate = tempDate.isBefore(today)
        ? Age.add(date: tempDate, duration: AgeDuration(years: 1))
        : tempDate;
    AgeDuration nextBirthdayDuration =
        Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);
    setState(() {
      var parsedDate = DateTime.parse(nextBirthdayDate.toString());

      String convertedDate = DateFormat("dd-MM-yyyy").format(parsedDate);
      nextbirthday = convertedDate;
      nextbirthday2 = nextBirthdayDuration;
    });
  }

  style() {
    return TextStyle(
        fontFamily: 'Avenir',
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: Colors.black);
  }
}
