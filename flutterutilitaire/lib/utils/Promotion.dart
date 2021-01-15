import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Promotion extends StatefulWidget {
  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  //declaration variables
  double prix, economie, prixFinal, pourcentage;

  String _final;
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Calcul de promotion",
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
            Text(
              "Calcul de promotion",
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Prix du produit",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9.]"))
                ],
                // Trouver un moyen de ne mettre qu'un seule point
                onChanged: (String inputPrix) {
                  setState(() {
                    prix = double.tryParse(inputPrix);
                  });
                },
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 250,
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9.]"))
                ],
                onChanged: (String inputPourcentage) {
                  setState(() {
                    pourcentage = double.tryParse(inputPourcentage);
                  });
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: OutlineInputBorder(),
                  labelText: "Promotion",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15),
            IconButton(
              icon: Icon(Icons.account_balance_wallet_outlined, size: 50),
              onPressed: _calculPromo,
            ),
            SizedBox(height: 30),
            Text(
              _result,
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

//fonction calcul de la promotion
  void _calculPromo() {
    //Prix final
    prixFinal = prix * (1 - (pourcentage / 100));
    //la somme économiser
    economie = prix * (pourcentage / 100);
    //Juste 2 chiffres après la virgule
    _final = prixFinal.toStringAsFixed(2);
    setState(() {
      _result =
          "Vous devez payer : $_final € et vous avez économisé $economie €";
      print(_result);
    });
  }
}
