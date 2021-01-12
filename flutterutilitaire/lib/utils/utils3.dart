import 'package:flutter/material.dart';
import 'package:age/age.dart';

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
