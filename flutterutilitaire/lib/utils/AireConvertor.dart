import 'package:flutter/material.dart';

class UtilFile8 extends StatefulWidget {
  @override
  _UtilFileState createState() => _UtilFileState();
}

class _UtilFileState extends State<UtilFile8> {
  String choixDeLaSuperficie1 = 'Centimètre carré';
  String choixDeLaSuperficie2 = 'Mètre carré';
  double premiereValeur = 1;
  double deuxiemeValeur = 1;
  double modifSuperficie1;
  double modifSuperficie2;

  var contenuDeuxiemeChamps = TextEditingController();
  var contenuPremierChamps = TextEditingController();

  void testPremiereValeur() {
    if (choixDeLaSuperficie2 == 'Centimètre carré') {
      if (choixDeLaSuperficie1 == 'Centimètre carré') {
        modifSuperficie2 = deuxiemeValeur;
      } else if (choixDeLaSuperficie1 == 'Mètre carré') {
        modifSuperficie2 = deuxiemeValeur * 0.0001;
      } else if (choixDeLaSuperficie1 == 'Kilomètre carré') {
        modifSuperficie2 = deuxiemeValeur * 1e-6;
      } else if (choixDeLaSuperficie1 == 'Hectare') {
        modifSuperficie2 = deuxiemeValeur * 1e-4;
      } else if (choixDeLaSuperficie1 == 'Acre') {
        modifSuperficie2 = deuxiemeValeur * 0.000247105;
      }
    }
    if (choixDeLaSuperficie2 == 'Mètre carré') {
      if (choixDeLaSuperficie1 == 'Centimètre carré') {
        modifSuperficie2 = deuxiemeValeur * 10000;
      } else if (choixDeLaSuperficie1 == 'Mètre carré') {
        modifSuperficie2 = deuxiemeValeur;
      } else if (choixDeLaSuperficie1 == 'Kilomètre carré') {
        modifSuperficie2 = deuxiemeValeur * 0.000001;
      } else if (choixDeLaSuperficie1 == 'Hectare') {
        modifSuperficie2 = deuxiemeValeur * 0.0001;
      } else if (choixDeLaSuperficie1 == 'Acre') {
        modifSuperficie2 = deuxiemeValeur * 0.000247;
      }
    }
    if (choixDeLaSuperficie2 == 'Kilomètre carré') {
      if (choixDeLaSuperficie1 == 'Centimètre carré') {
        modifSuperficie2 = deuxiemeValeur * 10000000000;
      } else if (choixDeLaSuperficie1 == 'Mètre carré') {
        modifSuperficie2 = deuxiemeValeur * 1000000;
      } else if (choixDeLaSuperficie1 == 'Kilomètre carré') {
        modifSuperficie2 = deuxiemeValeur;
      } else if (choixDeLaSuperficie1 == 'Hectare') {
        modifSuperficie2 = deuxiemeValeur * 100;
      } else if (choixDeLaSuperficie1 == 'Acre') {
        modifSuperficie2 = deuxiemeValeur * 247.105381;
      }
    }
    if (choixDeLaSuperficie2 == 'Hectare') {
      if (choixDeLaSuperficie1 == 'Centimètre carré') {
        modifSuperficie2 = deuxiemeValeur * 100000000;
      } else if (choixDeLaSuperficie1 == 'Mètre carré') {
        modifSuperficie2 = deuxiemeValeur * 10000;
      } else if (choixDeLaSuperficie1 == 'Kilomètre carré') {
        modifSuperficie2 = deuxiemeValeur * 0.01;
      } else if (choixDeLaSuperficie1 == 'Hectare') {
        modifSuperficie2 = deuxiemeValeur;
      } else if (choixDeLaSuperficie1 == 'Acre') {
        modifSuperficie2 = deuxiemeValeur * 2.471054;
      }
    }
    if (choixDeLaSuperficie2 == 'Acre') {
      if (choixDeLaSuperficie1 == 'Centimètre carré') {
        modifSuperficie2 = deuxiemeValeur * 40468564.224;
      } else if (choixDeLaSuperficie1 == 'Mètre carré') {
        modifSuperficie2 = deuxiemeValeur * 4046.856422;
      } else if (choixDeLaSuperficie1 == 'Kilomètre carré') {
        modifSuperficie2 = deuxiemeValeur * 0.004047;
      } else if (choixDeLaSuperficie1 == 'Hectare') {
        modifSuperficie2 = deuxiemeValeur * 0.404686;
      }
      if (choixDeLaSuperficie1 == 'Acre') {
        modifSuperficie2 = deuxiemeValeur;
      }
    }
  }

  void testdeuxiemeValeur() {
    if (choixDeLaSuperficie1 == 'Centimètre carré') {
      if (choixDeLaSuperficie2 == 'Centimètre carré') {
        modifSuperficie1 = premiereValeur;
      }
      if (choixDeLaSuperficie2 == 'Mètre carré') {
        modifSuperficie1 = premiereValeur * 0.0001;
      } else if (choixDeLaSuperficie2 == 'Kilomètre carré') {
        modifSuperficie1 = premiereValeur * 1e-6;
      } else if (choixDeLaSuperficie2 == 'Hectare') {
        modifSuperficie1 = premiereValeur * 1e-4;
      } else if (choixDeLaSuperficie2 == 'Acre') {
        modifSuperficie1 = premiereValeur * 0.000247105;
      }
    }
    if (choixDeLaSuperficie1 == 'Mètre carré') {
      if (choixDeLaSuperficie2 == 'Centimètre carré') {
        modifSuperficie1 = premiereValeur * 10000;
      }
      if (choixDeLaSuperficie2 == 'Mètre carré') {
        modifSuperficie1 = premiereValeur;
      }
      if (choixDeLaSuperficie2 == 'Kilomètre carré') {
        modifSuperficie1 = premiereValeur * 0.000001;
      }
      if (choixDeLaSuperficie2 == 'Hectare') {
        modifSuperficie1 = premiereValeur * 0.0001;
      }
      if (choixDeLaSuperficie2 == 'Acre') {
        modifSuperficie1 = premiereValeur * 0.000247;
      }
    }
    if (choixDeLaSuperficie1 == 'Kilomètre carré') {
      if (choixDeLaSuperficie2 == 'Centimètre carré') {
        modifSuperficie1 = premiereValeur * 10000000000;
      }
      if (choixDeLaSuperficie2 == 'Mètre carré') {
        modifSuperficie1 = premiereValeur * 1000000;
      }
      if (choixDeLaSuperficie2 == 'Kilomètre carré') {
        modifSuperficie1 = premiereValeur;
      }
      if (choixDeLaSuperficie2 == 'Hectare') {
        modifSuperficie1 = premiereValeur * 100;
      }
      if (choixDeLaSuperficie2 == 'Acre') {
        modifSuperficie1 = premiereValeur * 247.105381;
      }
    }
    if (choixDeLaSuperficie1 == 'Hectare') {
      if (choixDeLaSuperficie2 == 'Centimètre carré') {
        modifSuperficie1 = premiereValeur * 100000000;
      }
      if (choixDeLaSuperficie2 == 'Mètre carré') {
        modifSuperficie1 = premiereValeur * 10000;
      }
      if (choixDeLaSuperficie2 == 'Kilomètre carré') {
        modifSuperficie1 = premiereValeur * 0.01;
      }
      if (choixDeLaSuperficie2 == 'Hectare') {
        modifSuperficie1 = premiereValeur;
      }
      if (choixDeLaSuperficie2 == 'Acre') {
        modifSuperficie1 = premiereValeur * 2.471054;
      }
    }
    if (choixDeLaSuperficie1 == 'Acre') {
      if (choixDeLaSuperficie2 == 'Centimètre carré') {
        modifSuperficie1 = premiereValeur * 40468564.224;
      }
      if (choixDeLaSuperficie2 == 'Mètre carré') {
        modifSuperficie1 = premiereValeur * 4046.856422;
      }
      if (choixDeLaSuperficie2 == 'Kilomètre carré') {
        modifSuperficie1 = premiereValeur * 0.004047;
      }
      if (choixDeLaSuperficie2 == 'Hectare') {
        modifSuperficie1 = premiereValeur * 0.404686;
      }
      if (choixDeLaSuperficie2 == 'Acre') {
        modifSuperficie1 = premiereValeur;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Convertisseur d'aires",
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
        // Première Aire
        DropdownButton<String>(
            value: choixDeLaSuperficie1,
            onChanged: (String newValue) {
              setState(() {
                choixDeLaSuperficie1 = newValue;
                testPremiereValeur();
              });
            },
            items: <String>[
              'Centimètre carré',
              'Mètre carré',
              'Kilomètre carré',
              'Hectare',
              'Acre'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList()),
        SizedBox(height: 20),
        //Premier champs rempli
        Container(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              labelText: "Valeur 1",
              hintText: '$modifSuperficie2',
              labelStyle: TextStyle(color: Colors.black),
            ),
            controller: contenuPremierChamps,
            onChanged: (valeurDuSecondChamps) {
              setState(() {
                premiereValeur = double.parse(valeurDuSecondChamps);
                testdeuxiemeValeur();
                if (contenuDeuxiemeChamps.text.isNotEmpty) {
                  contenuDeuxiemeChamps.clear();
                }
              });
            },
          ),
        ),
        SizedBox(height: 20),
        // Deuxieme Aire
        DropdownButton<String>(
            value: choixDeLaSuperficie2,
            onChanged: (String newValue) {
              setState(() {
                choixDeLaSuperficie2 = newValue;
                testdeuxiemeValeur();
              });
            },
            items: <String>[
              'Centimètre carré',
              'Mètre carré',
              'Kilomètre carré',
              'Hectare',
              'Acre'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList()),
        SizedBox(height: 20),
        //Deuxième champs rempli
        Container(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              labelText: "Valeur 2",
              hintText: '$modifSuperficie1',
              labelStyle: TextStyle(color: Colors.black),
            ),
            controller: contenuDeuxiemeChamps,
            onChanged: (valeurDuPremierChamps) {
              setState(() {
                deuxiemeValeur = double.parse(valeurDuPremierChamps);
                testPremiereValeur();
                if (contenuPremierChamps.text.isNotEmpty) {
                  contenuPremierChamps.clear();
                }
              });
            },
          ),
        ),
      ])),
    );
  }
}
