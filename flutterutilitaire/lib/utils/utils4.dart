import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Promotion extends StatefulWidget {
  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  double prix, economie, prixFinal, pourcentage;

  String _final;
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promotion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Calcul de promotion"),
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9.]"))
              ],
              // Trouver un moyen de ne mettre qu'un seule point
              onChanged: (String inputPrix) {
                setState(() {
                  prix = double.tryParse(inputPrix);
                });
              },
              decoration: InputDecoration(labelText: "Prix du produit"),
            ),
            TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9.]"))
              ],
              onChanged: (String inputPourcentage) {
                setState(() {
                  pourcentage = double.tryParse(inputPourcentage);
                });
              },
              decoration: InputDecoration(labelText: "Promotion"),
            ),
            IconButton(
              icon: Icon(Icons.account_balance_wallet_outlined),
              onPressed: _calculPromo,
            ),
            Text(_result),
          ],
        ),
      ),
    );
  }

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
