import 'package:flutter/material.dart';
import 'dart:math';

class UtilFile2 extends StatefulWidget {
  @override
  _UtilFileState createState() => _UtilFileState();
}

class _UtilFileState extends State<UtilFile2> {
  String choixDuPremierType = 'Octect - O';
  String choixDuSecondType = 'Kilooctet - KO';
  double premiereValeur = 1;
  double deuxiemeValeur = 1;
  double modifpremiereValeur;
  double modifdeuxiemeValeur;

  var contenuDeuxiemeChamps = TextEditingController();
  var contenuPremierChamps = TextEditingController();

  void testpremiereValeur() {
    if (choixDuSecondType == 'Octect - O') {
      if (choixDuPremierType == 'Octect - O') {
        modifdeuxiemeValeur = deuxiemeValeur;
      } else if (choixDuPremierType == 'Kilooctet - KO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 1);
      } else if (choixDuPremierType == 'Mégaoctet - MO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 2);
      } else if (choixDuPremierType == 'Gigaoctet - GO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 3);
      } else if (choixDuPremierType == 'Téraoctet - TO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 4);
      } else if (choixDuPremierType == 'Pétaoctet - PO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 5);
      }
    }
    if (choixDuSecondType == 'Kilooctet - KO') {
      if (choixDuPremierType == 'Octect - O') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 1);
      } else if (choixDuPremierType == 'Kilooctet - KO') {
        modifdeuxiemeValeur = deuxiemeValeur;
      } else if (choixDuPremierType == 'Mégaoctet - MO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 1);
      } else if (choixDuPremierType == 'Gigaoctet - GO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 2);
      } else if (choixDuPremierType == 'Téraoctet - TO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 3);
      } else if (choixDuPremierType == 'Pétaoctet - PO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 4);
      }
    }
    if (choixDuSecondType == 'Mégaoctet - MO') {
      if (choixDuPremierType == 'Octect - O') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 2);
      } else if (choixDuPremierType == 'Kilooctet - KO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 1);
      } else if (choixDuPremierType == 'Mégaoctet - MO') {
        modifdeuxiemeValeur = deuxiemeValeur;
      } else if (choixDuPremierType == 'Gigaoctet - GO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 1);
      } else if (choixDuPremierType == 'Téraoctet - TO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 2);
      } else if (choixDuPremierType == 'Pétaoctet - PO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 3);
      }
    }
    if (choixDuSecondType == 'Gigaoctet - GO') {
      if (choixDuPremierType == 'Octect - O') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 3);
      } else if (choixDuPremierType == 'Kilooctet - KO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 2);
      } else if (choixDuPremierType == 'Mégaoctet - MO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 1);
      } else if (choixDuPremierType == 'Gigaoctet - GO') {
        modifdeuxiemeValeur = deuxiemeValeur;
      } else if (choixDuPremierType == 'Téraoctet - TO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 1);
      } else if (choixDuPremierType == 'Pétaoctet - PO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 2);
      }
    }
    if (choixDuSecondType == 'Téraoctet - TO') {
      if (choixDuPremierType == 'Octect - O') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 4);
      } else if (choixDuPremierType == 'Kilooctet - KO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 3);
      } else if (choixDuPremierType == 'Mégaoctet - MO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 2);
      } else if (choixDuPremierType == 'Gigaoctet - GO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 1);
      }
      if (choixDuPremierType == 'Téraoctet - TO') {
        modifdeuxiemeValeur = deuxiemeValeur;
      } else if (choixDuPremierType == 'Pétaoctet - PO') {
        modifdeuxiemeValeur = deuxiemeValeur / pow(1000, 1);
      }
    }
    if (choixDuSecondType == 'Pétaoctet - PO') {
      if (choixDuPremierType == 'Octect - O') {
        modifdeuxiemeValeur = (deuxiemeValeur * pow(1000, 5));
      } else if (choixDuPremierType == 'Kilooctet - KO') {
        modifdeuxiemeValeur = (deuxiemeValeur * pow(1000, 4));
      } else if (choixDuPremierType == 'Mégaoctet - MO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 3);
      } else if (choixDuPremierType == 'Gigaoctet - GO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 2);
      } else if (choixDuPremierType == 'Téraoctet - TO') {
        modifdeuxiemeValeur = deuxiemeValeur * pow(1000, 1);
      }
      if (choixDuPremierType == 'Pétaoctet - PO') {
        modifdeuxiemeValeur = deuxiemeValeur;
      }
    }
  }

  void testdeuxiemeValeur() {
    if (choixDuPremierType == 'Octect - O') {
      if (choixDuSecondType == 'Octect - O') {
        modifpremiereValeur = premiereValeur;
      }
      if (choixDuSecondType == 'Kilooctet - KO') {
        modifpremiereValeur = premiereValeur / pow(1000, 1);
      } else if (choixDuSecondType == 'Mégaoctet - MO') {
        modifpremiereValeur = premiereValeur / pow(1000, 2);
      } else if (choixDuSecondType == 'Gigaoctet - GO') {
        modifpremiereValeur = premiereValeur / pow(1000, 3);
      } else if (choixDuSecondType == 'Téraoctet - TO') {
        modifpremiereValeur = premiereValeur / pow(1000, 4);
      } else if (choixDuSecondType == 'Pétaoctet - PO') {
        modifpremiereValeur = premiereValeur / pow(1000, 5);
      }
    }
    if (choixDuPremierType == 'Kilooctet - KO') {
      if (choixDuSecondType == 'Octect - O') {
        modifpremiereValeur = premiereValeur * pow(1000, 1);
      }
      if (choixDuSecondType == 'Kilooctet - KO') {
        modifpremiereValeur = premiereValeur;
      }
      if (choixDuSecondType == 'Mégaoctet - MO') {
        modifpremiereValeur = premiereValeur / pow(1000, 1);
      }
      if (choixDuSecondType == 'Gigaoctet - GO') {
        modifpremiereValeur = premiereValeur / pow(1000, 2);
      }
      if (choixDuSecondType == 'Téraoctet - TO') {
        modifpremiereValeur = premiereValeur / pow(1000, 3);
      }
      if (choixDuSecondType == 'Pétaoctet - PO') {
        modifpremiereValeur = premiereValeur / pow(1000, 4);
      }
    }
    if (choixDuPremierType == 'Mégaoctet - MO') {
      if (choixDuSecondType == 'Octect - O') {
        modifpremiereValeur = premiereValeur * pow(1000, 2);
      }
      if (choixDuSecondType == 'Kilooctet - KO') {
        modifpremiereValeur = premiereValeur * pow(1000, 1);
      }
      if (choixDuSecondType == 'Mégaoctet - MO') {
        modifpremiereValeur = premiereValeur;
      }
      if (choixDuSecondType == 'Gigaoctet - GO') {
        modifpremiereValeur = premiereValeur / pow(1000, 1);
      }
      if (choixDuSecondType == 'Téraoctet - TO') {
        modifpremiereValeur = premiereValeur / pow(1000, 2);
      }
      if (choixDuSecondType == 'Pétaoctet - PO') {
        modifpremiereValeur = premiereValeur / pow(1000, 3);
      }
    }
    if (choixDuPremierType == 'Gigaoctet - GO') {
      if (choixDuSecondType == 'Octect - O') {
        modifpremiereValeur = premiereValeur * pow(1000, 3);
      }
      if (choixDuSecondType == 'Kilooctet - KO') {
        modifpremiereValeur = premiereValeur * pow(1000, 2);
      }
      if (choixDuSecondType == 'Mégaoctet - MO') {
        modifpremiereValeur = premiereValeur * pow(1000, 1);
      }
      if (choixDuSecondType == 'Gigaoctet - GO') {
        modifpremiereValeur = premiereValeur;
      }
      if (choixDuSecondType == 'Téraoctet - TO') {
        modifpremiereValeur = premiereValeur / pow(1000, 1);
      }
      if (choixDuSecondType == 'Pétaoctet - PO') {
        modifpremiereValeur = premiereValeur / pow(1000, 2);
      }
    }
    if (choixDuPremierType == 'Téraoctet - TO') {
      if (choixDuSecondType == 'Octect - O') {
        modifpremiereValeur = premiereValeur * pow(1000, 4);
      }
      if (choixDuSecondType == 'Kilooctet - KO') {
        modifpremiereValeur = premiereValeur * pow(1000, 3);
      }
      if (choixDuSecondType == 'Mégaoctet - MO') {
        modifpremiereValeur = premiereValeur * pow(1000, 2);
      }
      if (choixDuSecondType == 'Gigaoctet - GO') {
        modifpremiereValeur = premiereValeur * pow(1000, 1);
      }
      if (choixDuSecondType == 'Téraoctet - TO') {
        modifpremiereValeur = premiereValeur;
      }
      if (choixDuSecondType == 'Pétaoctet - PO') {
        modifpremiereValeur = premiereValeur / pow(1000, 1);
      }
    }
    if (choixDuPremierType == 'Pétaoctet - PO') {
      if (choixDuSecondType == 'Octect - O') {
        modifpremiereValeur = premiereValeur * pow(1000, 5);
      }
      if (choixDuSecondType == 'Kilooctet - KO') {
        modifpremiereValeur = premiereValeur * pow(1000, 4);
      }
      if (choixDuSecondType == 'Mégaoctet - MO') {
        modifpremiereValeur = premiereValeur * pow(1000, 3);
      }
      if (choixDuSecondType == 'Gigaoctet - GO') {
        modifpremiereValeur = premiereValeur * pow(1000, 2);
      }
      if (choixDuSecondType == 'Téraoctet - TO') {
        modifpremiereValeur = premiereValeur * pow(1000, 1);
      }
      if (choixDuSecondType == 'Pétaoctet - PO') {
        modifpremiereValeur = premiereValeur;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Utilitaire 2"),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
        // Premier Type
        DropdownButton<String>(
            value: choixDuPremierType,
            onChanged: (String newValue) {
              setState(() {
                choixDuPremierType = newValue;
                testpremiereValeur();
              });
            },
            items: <String>[
              'Octect - O',
              'Kilooctet - KO',
              'Mégaoctet - MO',
              'Gigaoctet - GO',
              'Téraoctet - TO',
              'Pétaoctet - PO'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList()),

        //Premier champs rempli
        TextField(
          controller: contenuPremierChamps,
          obscureText: false,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Valeur 1',
              hintText: '$modifdeuxiemeValeur'),
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

        // Deuxieme Type
        DropdownButton<String>(
            value: choixDuSecondType,
            onChanged: (String newValue) {
              setState(() {
                choixDuSecondType = newValue;
                testdeuxiemeValeur();
              });
            },
            items: <String>[
              'Octect - O',
              'Kilooctet - KO',
              'Mégaoctet - MO',
              'Gigaoctet - GO',
              'Téraoctet - TO',
              'Pétaoctet - PO'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList()),

        //Deuxième champs rempli
        TextField(
          controller: contenuDeuxiemeChamps,
          obscureText: false,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Valeur 2',
              hintText: '$modifpremiereValeur'),
          onChanged: (valeurDuPremierChamps) {
            setState(() {
              deuxiemeValeur = double.parse(valeurDuPremierChamps);
              testpremiereValeur();
              if (contenuPremierChamps.text.isNotEmpty) {
                contenuPremierChamps.clear();
              }
            });
          },
        ),
      ])),
    );
  }
}
