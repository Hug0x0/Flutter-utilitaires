import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TemperatureCalcul extends StatefulWidget {
  @override
  _TemperatureCalculState createState() => _TemperatureCalculState();
}

class _TemperatureCalculState extends State<TemperatureCalcul> {
  int _fahrenheit;
  int _celsius;
  int _kelvin;
  double _fahrenheitR = 0;
  double _celsiusR = 0;
  double _kelvinR = 0;

  // Valeur qui indique quel est l'unité 0 = Celsius 1 = Fahrenheit 2 = Kelvin
  int temp1, temp2;

  bool modification1 = false, modification2 = false;
  bool change1 = false, change2 = true;
  int changeP = 0, changeD = 0;
  // La valeur en string des dropdown boutton
  String valueTemp1, valueTemp2, valeurTemporaire;

  void conversion() {
    // °C -> °F
    if (temp1 == 0 && temp2 == 1 && !modification1) {
      _celsiusTofahrenheit();
      _controller2 = new TextEditingController(text: "$_fahrenheitR");
    }
    // °C -> K
    else if (temp1 == 0 && temp2 == 2 && !modification1) {
      _celsiusToKelvin();
      _controller2 = new TextEditingController(text: "$_kelvinR");
    }

    if (temp1 == 1 && temp2 == 0 && !modification1) {
      _fahrenheitToCelsius();
      _controller2 = new TextEditingController(text: "$_celsiusR");
    } else if (temp1 == 1 && temp2 == 2 && !modification1) {
      _fahrenheitToKelvin();
      _controller2 = new TextEditingController(text: "$_kelvinR");
    }
    if (temp1 == 2 && temp2 == 0 && !modification1) {
      _kelvinToCelsius();
      _controller2 = new TextEditingController(text: "$_celsiusR");
    } else if (temp1 == 2 && temp2 == 1 && !modification1) {
      _kelvinToFahrenheit();
      _controller2 = new TextEditingController(text: "$_fahrenheitR");
    }

    // Pour le deuxième texteField
    // °C -> °F
    if (temp2 == 0 && temp1 == 1 && !modification2) {
      _celsiusTofahrenheit();
      _controller1 = new TextEditingController(text: "$_fahrenheitR");
    }
    // °C -> K
    else if (temp2 == 0 && temp1 == 2 && !modification2) {
      _celsiusToKelvin();
      _controller1 = new TextEditingController(text: "$_kelvinR");
    }

    if (temp2 == 1 && temp1 == 0 && !modification2) {
      _fahrenheitToCelsius();
      _controller1 = new TextEditingController(text: "$_celsiusR");
    } else if (temp2 == 1 && temp1 == 2 && !modification2) {
      _fahrenheitToKelvin();
      _controller1 = new TextEditingController(text: "$_kelvinR");
    }
    if (temp2 == 2 && temp1 == 0 && !modification2) {
      _kelvinToCelsius();
      _controller1 = new TextEditingController(text: "$_celsiusR");
    } else if (temp2 == 2 && temp1 == 1 && !modification2) {
      _kelvinToFahrenheit();
      _controller1 = new TextEditingController(text: "$_fahrenheitR");
    }
  }

  void _fahrenheitToCelsius() {
    setState(() {
      if (_fahrenheit == null) {
        _erreur();
      } else {
        _celsiusR = (_fahrenheit - 32) * (5 / 9);
      }
    });

    print("F to C");
  }

  void _fahrenheitToKelvin() {
    setState(() {
      if (_fahrenheit != null) {
        _kelvinR = (_fahrenheit - 32) * (5 / 9) + 273.15;
      } else {
        _erreur();
      }
      print("F To K");
    });
  }

  void _celsiusToKelvin() {
    setState(() {
      if (_celsius != null) {
        _kelvinR = _celsius + 273.15;
      } else {
        _erreur();
      }
    });
    print("C To K");
  }

  void _celsiusTofahrenheit() {
    setState(() {
      if (_celsius != null) {
        _fahrenheitR = (_celsius * (9 / 5)) + 32;
      } else {
        _erreur();
      }
    });
    print("C To F");
  }

  void _kelvinToCelsius() {
    setState(() {
      if (_kelvin != null) {
        _celsiusR = _kelvin - 273.15;
      } else {
        _erreur();
      }
    });
    print("K To C");
  }

  void _kelvinToFahrenheit() {
    setState(() {
      if (_kelvin != null) {
        _fahrenheitR = (_kelvin - 273.15) * (9 / 5) + 32;
      } else {
        _erreur();
      }
    });
    print("K to F");
  }

  void _erreur() {
    print("Veuillez saisir une valeur");
  }

  TextEditingController _controller1, _controller2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Convertisseur de température",
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
            DropdownButton<String>(
              value: valueTemp1,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String newValue) {
                setState(() {
                  if (newValue != valueTemp2) {
                    valeurTemporaire = valueTemp1;
                    valueTemp1 = newValue;
                    modification1 = false;
                    modification2 = true;

                    if (newValue == 'Celsius') {
                      temp1 = 0;
                      if (valeurTemporaire == 'Fahrenheit') {
                        _celsius = _fahrenheit;
                      } else {
                        _celsius = _kelvin;
                      }

                      conversion();
                    } else if (newValue == 'Fahrenheit') {
                      temp1 = 1;
                      if (valeurTemporaire == 'Celsius') {
                        _fahrenheit = _celsius;
                      } else {
                        _fahrenheit = _kelvin;
                      }
                      conversion();
                    } else if (newValue == 'Kelvin') {
                      temp1 = 2;
                      if (valeurTemporaire == 'Celsius') {
                        _kelvin = _celsius;
                      } else {
                        _kelvin = _fahrenheit;
                      }
                      conversion();
                    }
                  }
                });
              },
              items: <String>['Celsius', 'Kelvin', 'Fahrenheit']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Première valeur",
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.black,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.black,
                    ))),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: _controller1,
                onChanged: (String inputValeurTemp) {
                  setState(() {
                    modification2 = true;
                    modification1 = false;
                    //Celsius
                    if (temp1 == 0) {
                      _celsius = int.tryParse(inputValeurTemp);
                      conversion();

                      // Fahrenheit
                    } else if (temp1 == 1) {
                      _fahrenheit = int.tryParse(inputValeurTemp);

                      conversion();

                      // Kelvin
                    } else if (temp1 == 2) {
                      _kelvin = int.tryParse(inputValeurTemp);
                      conversion();
                    }

                    // Mettre peut être un boolean
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            // Deuxième drop downbutton
            DropdownButton<String>(
              value: valueTemp2,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String newValue) {
                setState(() {
                  if (newValue != valueTemp1) {
                    valeurTemporaire = valueTemp2;
                    valueTemp2 = newValue;
                    modification1 = true;
                    modification2 = false;

                    if (newValue == 'Celsius') {
                      temp2 = 0;
                      if (valeurTemporaire == 'Fahrenheit') {
                        _celsius = _fahrenheit;
                      } else {
                        _celsius = _kelvin;
                      }
                      conversion();
                    } else if (newValue == 'Fahrenheit') {
                      temp2 = 1;
                      if (valeurTemporaire == 'Celsius') {
                        _fahrenheit = _celsius;
                      } else {
                        _fahrenheit = _kelvin;
                      }
                      conversion();
                    } else if (newValue == 'Kelvin') {
                      temp2 = 2;
                      if (valeurTemporaire == 'Celsius') {
                        _kelvin = _celsius;
                      } else {
                        _kelvin = _fahrenheit;
                      }

                      conversion();
                    }
                  }
                });
              },
              items: <String>['Celsius', 'Kelvin', 'Fahrenheit']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Deuxième valeur",
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.black,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.black,
                    ))),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: _controller2,
                onChanged: (String inputValeurTemp) {
                  setState(() {
                    modification1 = true;
                    modification2 = false;

                    //Celsius
                    if (temp2 == 0) {
                      _celsius = int.tryParse(inputValeurTemp);
                      conversion();
                    }
                    // Fahrenheit
                    else if (temp2 == 1) {
                      _fahrenheit = int.tryParse(inputValeurTemp);
                      conversion();
                    }

                    // Kelvin
                    else if (temp2 == 2) {
                      _kelvin = int.tryParse(inputValeurTemp);
                      conversion();
                    }
                  });
                },
              ),
            ),

            // Text("Base C= $_celsius K=$_kelvin F=$_fahrenheit \n"
            //     "Resultat c=$_celsiusR K=$_kelvinR F=$_fahrenheitR \n"
            //     "Modification 1 = $modification1 \n"
            //     "Modification 2 = $modification2 \n"),
          ],
        ),
      ),
    );
  }
}
