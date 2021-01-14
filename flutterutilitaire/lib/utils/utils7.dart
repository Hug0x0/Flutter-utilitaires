import 'package:flutter/material.dart';
import 'package:string_converter/converter.dart';
import 'dart:math' as Math;

class ConvertNum extends StatefulWidget {
  @override
  _ConvertNumState createState() => _ConvertNumState();
}

class _ConvertNumState extends State<ConvertNum> {
  //variables
  String dropdownValue = 'BIN';
  String dropdownValue2 = 'BIN';
  TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String TextFieldValue = "Tap";
  String TextFieldValue2 = "Tap";
  String value = "0";
  String value2 = "0";

  //function decimal to Octal
  String decimalToOctal(double input) {
    String result = "";
    int x = input.toInt();
    do {
      result += (x % 8).toString();
      x ~/= 8;
    } while (x > 0);
    result = String.fromCharCodes(result.runes.toList().reversed);
    if (input - (input.toInt()) != 0) {
      result += ".";
      double y = input - (input.toInt());
      for (int i = 0; i < 4 && y != 0; i++) {
        int reminder;
        y *= 8;
        reminder = y.toInt();
        result += (reminder.toString());
        y -= reminder;
        if (y == 0) break;
      }
    }
    return result;
  }

  //octal to decimal
  String octalToDecimal(String input) {
    //result in double
    double result = 0;
    int l;

    bool dot = false;
    if (input.indexOf(".") != -1) {
      l = input.indexOf(".");
      dot = true;
    } else
      l = input.length;
    for (int j = 0, i = l - 1; i >= 0; i++, j++) {
      result += int.parse(input[i]) * Math.pow(8, j);
    }
    if (dot) {
      for (int j = 1, i = l + 1; i < input.length; i++, j++) {
        result += int.parse(input[i]) / Math.pow(8, j);
      }
    }

    return result.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Numerical convert page"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_upward, color: Colors.green),
            iconSize: 30,
            elevation: 16,
            style: TextStyle(color: Colors.green, fontSize: 25),
            underline: Container(
              height: 4,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['BIN', 'OCT', 'DEC', 'HEX']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          TextField(
            style: TextStyle(color: Colors.green),
            decoration: InputDecoration(
                hintText: "Mettez votre valeur",
                labelText: "Firs Input",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.deepPurpleAccent,
                )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.green,
                ))),
            controller: _controller,
            cursorColor: Colors.green,
            onChanged: (value) {
              setState(() {
                //TextFieldValue = value;

                //binaire convert
                if (dropdownValue.contains("BIN")) {
                  //bin to dec convert
                  if (dropdownValue2.contains("DEC")) {
                    TextFieldValue = "DEC";
                    TextFieldValue =
                        int.parse(value, radix: 2).toRadixString(10);
                    _controller2.text = "$TextFieldValue";
                  }

                  //bin to oct convert
                  else if (dropdownValue2.contains("OCT")) {
                    TextFieldValue = "OCT";
                    final converter = StringConverter();
                    TextFieldValue = converter.toOctal(value);
                    _controller2.text = "$TextFieldValue";
                  }
                  //bin to hexa convert
                  else if (dropdownValue2.contains("HEX")) {
                    TextFieldValue = "HEX";
                    int convN;
                    convN = int.parse(value);
                    TextFieldValue = convN.toRadixString(16).toUpperCase();
                    _controller2.text = "$TextFieldValue";
                  }

                  //else..
                  else {
                    _controller2.text = "$TextFieldValue";
                  }
                }

                //decimal convert
                else if (dropdownValue.contains("DEC")) {
                  //TextFieldValue = dropdownValue;
                  int convN;

                  //dec to binaire convert
                  if (dropdownValue2.contains("BIN")) {
                    setState(() {
                      convN = int.tryParse(value);
                      value = convN.toRadixString(2);
                      TextFieldValue = value;
                      _controller2.text = "$TextFieldValue";
                    });
                  }

                  //dec to hexa convert
                  else if (dropdownValue2.contains("HEX")) {
                    setState(() {
                      TextFieldValue = "HEX";
                      int convN;
                      convN = int.tryParse(value);
                      value = convN.toRadixString(16).toUpperCase();
                      _controller2.text = "${value}";
                    });
                  }
                  //dec to oct convert
                  else if (dropdownValue2.contains("OCT")) {
                    setState(() {
                      TextFieldValue = "OCT";
                      double _test = double.parse(value);
                      TextFieldValue = decimalToOctal(_test);
                      _controller2.text = "${TextFieldValue}";
                    });
                  }
                  //else...
                  else {
                    _controller2.text = "${TextFieldValue}";
                  }
                }

                //HEX convert
                else if (dropdownValue.contains("HEX")) {
                  //TextFieldValue = dropdownValue;
                  int convN = int.tryParse(value, radix: 16);
                  //hex to bin convert
                  if (dropdownValue2.contains("BIN")) {
                    setState(() {
                      //convN = int.tryParse(value);
                      value = convN.toRadixString(2);
                      TextFieldValue = value;
                      _controller2.text = "$TextFieldValue";
                    });
                  }

                  //hex to Dec
                  else if (dropdownValue2.contains("DEC")) {
                    setState(() {
                      value = convN.toString();
                      TextFieldValue = value;
                      _controller2.text = "$TextFieldValue";
                    });
                  }

                  //hex to OCT(not implement)
                  else if (dropdownValue2.contains("OCT")) {
                    _controller2.text = "$TextFieldValue";
                  }
                  //else
                  else {
                    _controller2.text = "$TextFieldValue";
                  }
                }

                //octal convert
                else if (dropdownValue.contains("OCT")) {
                  //TextFieldValue = dropdownValue;
                  //octal to dec convert
                  if (dropdownValue2.contains("DEC")) {
                    TextFieldValue = octalToDecimal(value);
                    _controller2.text = "${TextFieldValue}";
                  } else {
                    _controller2.text = "$TextFieldValue";
                  }
                }
              });
            },
          ),
          /*
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Resultat : ${_controller.text} en $dropdownValue", style: TextStyle(color: Colors.green),),
          ),

           */

          //deuxiéme drop
          DropdownButton<String>(
            value: dropdownValue2,
            icon: Icon(Icons.arrow_downward, color: Colors.green),
            iconSize: 30,
            elevation: 16,
            style: TextStyle(color: Colors.green, fontSize: 25),
            underline: Container(
              height: 4,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue2) {
              setState(() {
                dropdownValue2 = newValue2;
              });
            },
            items: <String>['BIN', 'OCT', 'DEC', 'HEX']
                .map<DropdownMenuItem<String>>((String value2) {
              return DropdownMenuItem<String>(
                value: value2,
                child: Text(value2),
              );
            }).toList(),
          ),
          TextField(
            style: TextStyle(color: Colors.green),
            decoration: InputDecoration(
                hintText: "Mettez votre valeur",
                labelText: "Second Input",
                labelStyle: TextStyle(color: Colors.deepPurpleAccent),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.deepPurpleAccent,
                )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.green,
                ))),
            controller: _controller2,
            onChanged: (value2) {
              setState(() {
                //TextFieldValue2 = value;
                //binaire convert
                if (dropdownValue2.contains("BIN")) {
                  //bin to dec convert
                  if (dropdownValue.contains("DEC")) {
                    TextFieldValue2 = "DEC";
                    TextFieldValue2 =
                        int.parse(value2, radix: 2).toRadixString(10);
                    _controller.text = "$TextFieldValue2";
                  }
                  //bin to oct convert
                  else if (dropdownValue.contains("OCT")) {
                    TextFieldValue2 = "OCT";
                    final converter = StringConverter();
                    TextFieldValue2 = converter.toOctal(value2);
                    _controller.text = "$TextFieldValue2";
                  }
                  //bin to hexa convert
                  else if (dropdownValue.contains("HEX")) {
                    TextFieldValue2 = "HEX";
                    int convN;
                    convN = int.parse(value2);
                    TextFieldValue2 = convN.toRadixString(16).toUpperCase();
                    _controller.text = "$TextFieldValue2";
                  }

                  //else...
                  else {
                    _controller.text = "$TextFieldValue2";
                  }
                }

                //decimal convert
                else if (dropdownValue2.contains("DEC")) {
                  //TextFieldValue2 = dropdownValue;
                  //dec to bin convert
                  if (dropdownValue.contains("BIN")) {
                    setState(() {
                      int convN;
                      //TextFieldValue2 = "BIN";
                      convN = int.tryParse(value2);
                      value2 = convN.toRadixString(2);
                      _controller.text = "$value2";
                    });
                  }
                  //dec to hexa convert
                  else if (dropdownValue.contains("HEX")) {
                    setState(() {
                      //TextFieldValue2 = "HEX";
                      int convN;
                      convN = int.tryParse(value2);
                      value2 = convN.toRadixString(16).toUpperCase();
                      _controller.text = "$value2";
                    });
                  }
                  //dec to oct convert
                  else if (dropdownValue.contains("OCT")) {
                    setState(() {
                      TextFieldValue2 = "OCT";
                      double _test = double.parse(value2);
                      TextFieldValue2 = decimalToOctal(_test);
                      _controller.text = "${TextFieldValue2}";
                    });
                  }
                  //else...
                  else {
                    _controller.text = "${TextFieldValue2}";
                  }
                }

                //HEX convert
                else if (dropdownValue2.contains("HEX")) {
                  //TextFieldValue2 = dropdownValue;
                  int convN = int.tryParse(value2, radix: 16);
                  //hex to bin convert
                  if (dropdownValue.contains("BIN")) {
                    setState(() {
                      //convN = int.tryParse(value);
                      value2 = convN.toRadixString(2);
                      TextFieldValue2 = value2;
                      _controller.text = "$TextFieldValue2";
                    });
                  }

                  //hex to Dec
                  else if (dropdownValue.contains("DEC")) {
                    setState(() {
                      value2 = convN.toString();
                      TextFieldValue2 = value2;
                      _controller.text = "$TextFieldValue2";
                    });
                  }

                  //hex to OCT(not implement)
                  else if (dropdownValue.contains("OCT")) {
                    _controller.text = "$TextFieldValue2";
                  }
                  //else
                  else {
                    _controller.text = "$TextFieldValue2";
                  }
                }

                //octal convert
                else if (dropdownValue2.contains("OCT")) {
                  //TextFieldValue = dropdownValue;
                  //octal to dec convert
                  if (dropdownValue.contains("DEC")) {
                    TextFieldValue2 = octalToDecimal(value2);
                    _controller.text = "${TextFieldValue2}";
                  } else {
                    _controller.text = "$TextFieldValue2";
                  }
                }
              });
            },
          ),
          //Text("test de retour 2 : ${TextFieldValue2} "),
          /*
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Resultat : ${_controller2.text} en $dropdownValue2", style: TextStyle(color: Colors.green),),
          ),

           */
        ],
      ),
    );
  }
}
