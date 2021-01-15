import 'package:flutter/material.dart';

class Dectoroman extends StatefulWidget {
  @override
  _DectoromanState createState() => _DectoromanState();
}

class _DectoromanState extends State<Dectoroman> {
  //Déclaration d'un dictionnaire avec la relation nb chiffres romain
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
        backgroundColor: Colors.black,
        title: Text(
          "Convertisseur décimal en chiffre Romain",
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
        children: [
          Text("Veuillez entrer un nombres ", style: style()),
          SizedBox(height: 10.0),
          Container(
            width: 250,
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  ))),
              controller: _controller,
              onChanged: (value) {
                _toRoman(int.parse(_controller.text));
                setState(() {
                  _controller2.text = resultat;
                });
              },
            ),
          ),
          SizedBox(height: 20.0),
          Text("Veuillez entrer un chiffre romain ", style: style()),
          SizedBox(height: 10.0),
          Container(
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  )),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  ))),
              controller: _controller2,
              onChanged: (value2) {
                _toDecimal(_controller2.text);
                setState(() {
                  _controller.text = result2.toString();
                });
              },
            ),
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

  style() {
    return TextStyle(
        fontFamily: 'Avenir',
        fontSize: 17,
        fontWeight: FontWeight.w700,
        color: Colors.black);
  }
}
