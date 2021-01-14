import 'package:flutter/material.dart';
import 'package:flutterutilitaire/class/convert.dart';

class ConvertDistance extends StatefulWidget {
  @override
  _ConvertDistanceState createState() => _ConvertDistanceState();
}

class _ConvertDistanceState extends State<ConvertDistance> {
  //variables
  String dropdownValue = 'Km';
  TextEditingController _controller = TextEditingController();
  String dropdownValue2 = 'Km';
  TextEditingController _controller2 = TextEditingController();
  //class convert

  Convert _convert = new Convert();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Convert Aires page"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
        child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 2,
            mainAxisSpacing: 0.0,
            crossAxisCount: 2,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Select Unit 1",
                      style: TextStyle(backgroundColor: Colors.green),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward, color: Colors.green),
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
                      items: <String>[
                        'Km',
                        'M',
                        'Dm',
                        'Cm',
                        'Mm',
                        'Nm',
                        'Yd',
                        'Ft',
                        'In'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    TextField(
                      controller: _controller,
                      onChanged: (value) {
                        setState(() {
                          //KILOMETER CONVERT TO (all)
                          if (dropdownValue.contains('Km')) {
                            if (dropdownValue2.contains('M'))
                              _controller2.text = _convert.KmToM(value);
                            else if (dropdownValue2.contains('Dm'))
                              _controller2.text = _convert.KmToDm(value);
                            else if (dropdownValue2.contains('Cm'))
                              _controller2.text = _convert.KmToCm(value);
                            else if (dropdownValue2.contains('Mm'))
                              _controller2.text = _convert.KmToMm(value);
                            else if (dropdownValue2.contains('Nm'))
                              _controller2.text = _convert.KmToNm(value);
                            else if (dropdownValue2.contains('Yd'))
                              _controller2.text = _convert.KmToYds(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.KmToFts(value);
                            else if (dropdownValue2.contains('In'))
                              _controller2.text = _convert.KmToInch(value);
                            else
                              _controller2.text = value;
                          }
                          //Meter convert to (all)
                          else if (dropdownValue.contains('M')) {
                            if (dropdownValue2.contains('Km'))
                              _controller2.text = _convert.MToKm(value);
                            else if (dropdownValue2.contains('Dm'))
                              _controller2.text = _convert.MToDm(value);
                            else if (dropdownValue2.contains('Cm'))
                              _controller2.text = _convert.MToCm(value);
                            else if (dropdownValue2.contains('Mm'))
                              _controller2.text = _convert.MToMm(value);
                            else if (dropdownValue2.contains('Nm'))
                              _controller2.text = _convert.MToNm(value);
                            else if (dropdownValue2.contains('Yd'))
                              _controller2.text = _convert.MToYds(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.MToFts(value);
                            else if (dropdownValue2.contains('In'))
                              _controller2.text = _convert.MToInch(value);
                            else
                              _controller2.text = value;
                          }

                          //Decimeter convert to (all)
                          else if (dropdownValue.contains('Dm')) {
                            if (dropdownValue2.contains('Km'))
                              _controller2.text = _convert.DmToKm(value);
                            else if (dropdownValue2.contains('M'))
                              _controller2.text = _convert.DmToM(value);
                            else if (dropdownValue2.contains('Cm'))
                              _controller2.text = _convert.DmToCm(value);
                            else if (dropdownValue2.contains('Mm'))
                              _controller2.text = _convert.DmToMm(value);
                            else if (dropdownValue2.contains('Nm'))
                              _controller2.text = _convert.DmToNano(value);
                            else if (dropdownValue2.contains('Yd'))
                              _controller2.text = _convert.DmToYds(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.DmToFt(value);
                            else if (dropdownValue2.contains('In'))
                              _controller2.text = _convert.DmToInch(value);
                            else
                              _controller2.text = value;
                          }

                          //Centimeter convert to (all)
                          else if (dropdownValue.contains('Cm')) {
                            if (dropdownValue2.contains('Km'))
                              _controller2.text = _convert.CmToKm(value);
                            else if (dropdownValue2.contains('M'))
                              _controller2.text = _convert.CmToM(value);
                            else if (dropdownValue2.contains('Dm'))
                              _controller2.text = _convert.CmToDm(value);
                            else if (dropdownValue2.contains('Mm'))
                              _controller2.text = _convert.CmToMm(value);
                            else if (dropdownValue2.contains('Nm'))
                              _controller2.text = _convert.CmToNano(value);
                            else if (dropdownValue2.contains('Yd'))
                              _controller2.text = _convert.CmToYds(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.CmToFt(value);
                            else if (dropdownValue2.contains('In'))
                              _controller2.text = _convert.CmToInch(value);
                            else
                              _controller2.text = value;
                          }

                          //Milimeter convert to (all)
                          else if (dropdownValue.contains('Mn')) {
                            if (dropdownValue2.contains('Km'))
                              _controller2.text = _convert.MmToKm(value);
                            else if (dropdownValue2.contains('M'))
                              _controller2.text = _convert.MmToM(value);
                            else if (dropdownValue2.contains('Dm'))
                              _controller2.text = _convert.MmToDm(value);
                            else if (dropdownValue2.contains('Cm'))
                              _controller2.text = _convert.MmToCm(value);
                            else if (dropdownValue2.contains('Nm'))
                              _controller2.text = _convert.MmToNano(value);
                            else if (dropdownValue2.contains('Yd'))
                              _controller2.text = _convert.MmToYds(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.MmToFt(value);
                            else if (dropdownValue2.contains('In'))
                              _controller2.text = _convert.MmToInch(value);
                            else
                              _controller2.text = value;
                          }

                          //Nanometer convert to (all)
                          else if (dropdownValue.contains('Nm')) {
                            if (dropdownValue2.contains('Km'))
                              _controller2.text = _convert.NanoToKm(value);
                            else if (dropdownValue2.contains('M'))
                              _controller2.text = _convert.NanoToM(value);
                            else if (dropdownValue2.contains('Dm'))
                              _controller2.text = _convert.NanoToDm(value);
                            else if (dropdownValue2.contains('Cm'))
                              _controller2.text = _convert.NanoToCm(value);
                            else if (dropdownValue2.contains('Mm'))
                              _controller2.text = _convert.NanoToMm(value);
                            else if (dropdownValue2.contains('Yd'))
                              _controller2.text = _convert.NanoToYds(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.NanoToFt(value);
                            else if (dropdownValue2.contains('In'))
                              _controller2.text = _convert.NanoToInch(value);
                            else
                              _controller2.text = value;
                          }

                          //Feet convert to (all)
                          else if (dropdownValue.contains('Ft')) {
                            if (dropdownValue2.contains('Km'))
                              _controller2.text = _convert.FeetToKm(value);
                            else if (dropdownValue2.contains('M'))
                              _controller2.text = _convert.FeetToM(value);
                            else if (dropdownValue2.contains('Dm'))
                              _controller2.text = _convert.FeetToDm(value);
                            else if (dropdownValue2.contains('Cm'))
                              _controller2.text = _convert.FeetToCm(value);
                            else if (dropdownValue2.contains('Mm'))
                              _controller2.text = _convert.FeetToMm(value);
                            else if (dropdownValue2.contains('Yd'))
                              _controller2.text = _convert.FeetToYds(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.FeetToNano(value);
                            else if (dropdownValue2.contains('In'))
                              _controller2.text = _convert.FeetToInch(value);
                            else
                              _controller2.text = value;
                          }

                          //Inch convert to (all)
                          else if (dropdownValue.contains('In')) {
                            if (dropdownValue2.contains('Km'))
                              _controller2.text = _convert.InchToKm(value);
                            else if (dropdownValue2.contains('M'))
                              _controller2.text = _convert.InchToM(value);
                            else if (dropdownValue2.contains('Dm'))
                              _controller2.text = _convert.InchToDm(value);
                            else if (dropdownValue2.contains('Cm'))
                              _controller2.text = _convert.InchToCm(value);
                            else if (dropdownValue2.contains('Mm'))
                              _controller2.text = _convert.InchToMm(value);
                            else if (dropdownValue2.contains('Yd'))
                              _controller2.text = _convert.InchToYds(value);
                            else if (dropdownValue2.contains('Nm'))
                              _controller2.text = _convert.InchToNano(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.InchToFeet(value);
                            else
                              _controller2.text = value;
                          }

                          //Yard to convert(all)
                          else if (dropdownValue.contains('Yd')) {
                            if (dropdownValue2.contains('Km'))
                              _controller2.text = _convert.YrdToKm(value);
                            else if (dropdownValue2.contains('M'))
                              _controller2.text = _convert.YrdToM(value);
                            else if (dropdownValue2.contains('Cm'))
                              _controller2.text = _convert.YrdToCm(value);
                            else if (dropdownValue2.contains('Mm'))
                              _controller2.text = _convert.YrdToMm(value);
                            else if (dropdownValue2.contains('Nm'))
                              _controller2.text = _convert.YrdToNano(value);
                            else if (dropdownValue2.contains('Dm'))
                              _controller2.text = _convert.YrdToDm(value);
                            else if (dropdownValue2.contains('Ft'))
                              _controller2.text = _convert.YrdToFeet(value);
                            else if (dropdownValue2.contains('In'))
                              _controller2.text = _convert.YrdToInch(value);
                            else
                              _controller2.text = value;
                          }
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Select Unit 2",
                      style: TextStyle(backgroundColor: Colors.green),
                    ),
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
                      items: <String>[
                        'Km',
                        'M',
                        'Dm',
                        'Cm',
                        'Mm',
                        'Nm',
                        'Yd',
                        'Ft',
                        'In'
                      ].map<DropdownMenuItem<String>>((String value2) {
                        return DropdownMenuItem<String>(
                          value: value2,
                          child: Text(value2),
                        );
                      }).toList(),
                    ),
                    TextField(
                      controller: _controller2,
                      onChanged: (value2) {
                        setState(() {
                          //KILOMETER CONVERT TO (all)
                          if (dropdownValue2.contains('Km')) {
                            if (dropdownValue.contains('M'))
                              _controller.text = _convert.KmToM(value2);
                            else if (dropdownValue.contains('Dm'))
                              _controller.text = _convert.KmToDm(value2);
                            else if (dropdownValue.contains('Cm'))
                              _controller.text = _convert.KmToCm(value2);
                            else if (dropdownValue.contains('Mm'))
                              _controller.text = _convert.KmToMm(value2);
                            else if (dropdownValue.contains('Nm'))
                              _controller.text = _convert.KmToNm(value2);
                            else if (dropdownValue.contains('Yd'))
                              _controller.text = _convert.KmToYds(value2);
                            else if (dropdownValue.contains('Ft'))
                              _controller.text = _convert.KmToFts(value2);
                            else if (dropdownValue.contains('In'))
                              _controller.text = _convert.KmToInch(value2);
                            else
                              _controller.text = value2;
                          }

                          //Meter convert to (all)
                          else if (dropdownValue2.contains('M')) {
                            if (dropdownValue.contains('Km'))
                              _controller.text = _convert.MToKm(value2);
                            else if (dropdownValue.contains('Dm'))
                              _controller.text = _convert.MToDm(value2);
                            else if (dropdownValue.contains('Cm'))
                              _controller.text = _convert.MToCm(value2);
                            else if (dropdownValue.contains('Mm'))
                              _controller.text = _convert.MToMm(value2);
                            else if (dropdownValue.contains('Nm'))
                              _controller.text = _convert.MToNm(value2);
                            else if (dropdownValue.contains('Yd'))
                              _controller.text = _convert.MToYds(value2);
                            else if (dropdownValue.contains('Ft'))
                              _controller.text = _convert.MToFts(value2);
                            else if (dropdownValue.contains('In'))
                              _controller.text = _convert.MToInch(value2);
                            else
                              _controller.text = value2;
                          }

                          //Decimeter to convert (all)
                          else if (dropdownValue2.contains('Dm')) {
                            if (dropdownValue.contains('Km'))
                              _controller.text = _convert.DmToKm(value2);
                            else if (dropdownValue.contains('M'))
                              _controller.text = _convert.DmToM(value2);
                            else if (dropdownValue.contains('Cm'))
                              _controller.text = _convert.DmToCm(value2);
                            else if (dropdownValue.contains('Mm'))
                              _controller.text = _convert.DmToMm(value2);
                            else if (dropdownValue.contains('Nm'))
                              _controller.text = _convert.DmToNano(value2);
                            else if (dropdownValue.contains('Yd'))
                              _controller.text = _convert.DmToYds(value2);
                            else if (dropdownValue.contains('Ft'))
                              _controller.text = _convert.DmToFt(value2);
                            else if (dropdownValue.contains('In'))
                              _controller.text = _convert.DmToInch(value2);
                            else
                              _controller.text = value2;
                          }

                          //Centimeter to convert (all)
                          else if (dropdownValue2.contains('Cm')) {
                            if (dropdownValue.contains('Km'))
                              _controller.text = _convert.CmToKm(value2);
                            else if (dropdownValue.contains('M'))
                              _controller.text = _convert.CmToM(value2);
                            else if (dropdownValue.contains('Dm'))
                              _controller.text = _convert.CmToDm(value2);
                            else if (dropdownValue.contains('Mm'))
                              _controller.text = _convert.CmToMm(value2);
                            else if (dropdownValue.contains('Nm'))
                              _controller.text = _convert.CmToNano(value2);
                            else if (dropdownValue.contains('Yd'))
                              _controller.text = _convert.CmToYds(value2);
                            else if (dropdownValue.contains('Ft'))
                              _controller.text = _convert.CmToFt(value2);
                            else if (dropdownValue.contains('In'))
                              _controller.text = _convert.CmToInch(value2);
                            else
                              _controller.text = value2;
                          }

                          //Milimeter to convert (all)
                          else if (dropdownValue2.contains('Mm')) {
                            if (dropdownValue.contains('Km'))
                              _controller.text = _convert.MmToKm(value2);
                            else if (dropdownValue.contains('M'))
                              _controller.text = _convert.MmToM(value2);
                            else if (dropdownValue.contains('Dm'))
                              _controller.text = _convert.MmToDm(value2);
                            else if (dropdownValue.contains('Cm'))
                              _controller.text = _convert.MmToCm(value2);
                            else if (dropdownValue.contains('Nm'))
                              _controller.text = _convert.MmToNano(value2);
                            else if (dropdownValue.contains('Yd'))
                              _controller.text = _convert.MmToYds(value2);
                            else if (dropdownValue.contains('Ft'))
                              _controller.text = _convert.MmToFt(value2);
                            else if (dropdownValue.contains('In'))
                              _controller.text = _convert.MmToInch(value2);
                            else
                              _controller.text = value2;
                          }

                          //Nanometer to convert (all)
                          else if (dropdownValue2.contains('Nm')) {
                            if (dropdownValue.contains('Km'))
                              _controller.text = _convert.NanoToKm(value2);
                            else if (dropdownValue.contains('M'))
                              _controller.text = _convert.NanoToM(value2);
                            else if (dropdownValue.contains('Dm'))
                              _controller.text = _convert.NanoToDm(value2);
                            else if (dropdownValue.contains('Cm'))
                              _controller.text = _convert.NanoToCm(value2);
                            else if (dropdownValue.contains('Mm'))
                              _controller.text = _convert.NanoToMm(value2);
                            else if (dropdownValue.contains('Yd'))
                              _controller.text = _convert.NanoToYds(value2);
                            else if (dropdownValue.contains('Ft'))
                              _controller.text = _convert.NanoToFt(value2);
                            else if (dropdownValue.contains('In'))
                              _controller.text = _convert.NanoToInch(value2);
                            else
                              _controller.text = value2;
                          }

                          //Feet to convert (all)
                          else if (dropdownValue2.contains('Nm')) {
                            if (dropdownValue.contains('Km'))
                              _controller.text = _convert.FeetToKm(value2);
                            else if (dropdownValue.contains('M'))
                              _controller.text = _convert.FeetToM(value2);
                            else if (dropdownValue.contains('Dm'))
                              _controller.text = _convert.FeetToDm(value2);
                            else if (dropdownValue.contains('Cm'))
                              _controller.text = _convert.FeetToCm(value2);
                            else if (dropdownValue.contains('Mm'))
                              _controller.text = _convert.FeetToMm(value2);
                            else if (dropdownValue.contains('Yd'))
                              _controller.text = _convert.FeetToYds(value2);
                            else if (dropdownValue.contains('Nm'))
                              _controller.text = _convert.FeetToNano(value2);
                            else if (dropdownValue.contains('In'))
                              _controller.text = _convert.FeetToInch(value2);
                            else
                              _controller.text = value2;
                          }

                          //Inch to convert (all)
                          else if (dropdownValue2.contains('In')) {
                            if (dropdownValue.contains('Km'))
                              _controller.text = _convert.InchToKm(value2);
                            else if (dropdownValue.contains('M'))
                              _controller.text = _convert.InchToM(value2);
                            else if (dropdownValue.contains('Dm'))
                              _controller.text = _convert.InchToDm(value2);
                            else if (dropdownValue.contains('Cm'))
                              _controller.text = _convert.InchToCm(value2);
                            else if (dropdownValue.contains('Mm'))
                              _controller.text = _convert.InchToMm(value2);
                            else if (dropdownValue.contains('Yd'))
                              _controller.text = _convert.InchToYds(value2);
                            else if (dropdownValue.contains('Nm'))
                              _controller.text = _convert.InchToNano(value2);
                            else if (dropdownValue.contains('Ft'))
                              _controller.text = _convert.InchToFeet(value2);
                            else
                              _controller.text = value2;
                          }

                          //yard to convert (all)
                          else if (dropdownValue2.contains('Yd')) {
                            if (dropdownValue.contains('Km'))
                              _controller.text = _convert.YrdToKm(value2);
                            else if (dropdownValue.contains('M'))
                              _controller.text = _convert.YrdToM(value2);
                            else if (dropdownValue.contains('Cm'))
                              _controller.text = _convert.YrdToCm(value2);
                            else if (dropdownValue.contains('Mm'))
                              _controller.text = _convert.YrdToMm(value2);
                            else if (dropdownValue.contains('Nm'))
                              _controller.text = _convert.YrdToNano(value2);
                            else if (dropdownValue.contains('Dm'))
                              _controller.text = _convert.YrdToDm(value2);
                            else if (dropdownValue.contains('Ft'))
                              _controller.text = _convert.YrdToFeet(value2);
                            else if (dropdownValue.contains('In'))
                              _controller.text = _convert.YrdToInch(value2);
                            else
                              _controller.text = value2;
                          }
                        });
                      },
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
