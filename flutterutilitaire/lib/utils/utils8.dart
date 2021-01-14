import 'package:flutter/material.dart';

class Dectoroman extends StatefulWidget {
  @override
  _DectoromanState createState() => _DectoromanState();
}

class _DectoromanState extends State<Dectoroman> {
  static Map<int, String> dictionary = {
    1000: 'M',
    900: 'CM',
    500: 'D',
    400: 'CD,',
    100: 'C',
    90: 'XC',
    50: 'L',
    40: 'XL',
    10: 'X',
    9: 'IX',
    5: 'V',
    4: 'IV',
    1: 'I'
  };

  static bool _checkDecimal(int n) {
    if (n > 0 && n < 3999) {
      return true;
    }
    return false;
  }

  TextEditingController _controller = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String result = '';
  String resultat = '';
  int result2;
  String val1 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decimal to roman"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Veuillez entrer un nombres "),
          TextField(
            controller: _controller,
            onChanged: (value) {
              _toRoman(int.parse(_controller.text));
              setState(() {
                _controller2.text = resultat;
                print(_controller.text);
              });
            },
          ),
          SizedBox(height: 20.0),
          Text("Veuillez entrer un chiffre romain "),
          TextField(
            controller: _controller2,
            onChanged: (value2) {
              _toDecimal(_controller2.text);
              setState(() {
                _controller.text = result2.toString();
                print("object");
                print(_controller2.text);
              });
            },
          ),
        ],
      )),
    );
  }

  void _toRoman(int decimal) {
    dictionary.forEach((k, v) {
      while (decimal >= k) {
        decimal -= k;
        result += v;
      }
    });
    setState(() {
      resultat = result;
      print("RESULT");
      print(result);
    });
    result = "";
  }

  void _toDecimal(String roman) {
    roman = roman.toUpperCase();
    int result = 0;

    dictionary.forEach((k, v) {
      while (roman.startsWith(v)) {
        roman = roman.substring(v.length, roman.length);
        result += k;
      }
    });
    setState(() {
      result2 = result;
    });
  }
}
