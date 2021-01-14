class Convert {
  //String input;

  //////////////////////////////////////////////////////km party////////////////////////////////////////////////////
  //km to Meter
  String KmToM(String input) {
    num result;
    result = double.parse(input) * 1000;
    return result.toString();
  }

//Km to Decimeter
  String KmToDm(String input) {
    //1km = 10.000dm
    num result;
    result = double.parse(input) * 10000;
    return result.toString();
  }

  //Km to Centimeter
  String KmToCm(String input) {
    //1km = 100.000Cm
    num result;
    result = double.parse(input) * 100000;
    return result.toString();
  }

  //Km to Milimeter
  String KmToMm(String input) {
    //1km = 1.000.000Mn
    num result;
    result = double.parse(input) * 1000000;
    return result.toString();
  }

  //Km to Nanometer
  String KmToNm(String input) {
    //1km = 1.000.000.000.000Nm
    num result;
    result = double.parse(input) * 1000000000000;
    return result.toString();
  }

  //Km to yards
  String KmToYds(String input) {
    //1km = 1093,61yard
    num result;
    result = double.parse(input) * 1093.61;
    return result.toString();
  }

  //Km to foot
  String KmToFts(String input) {
    //1km = 3280.83 foot
    num result;
    result = double.parse(input) * 3280.83;
    return result.toString();
  }

  //Km to inches
  String KmToInch(String input) {
    //1km = 39370.08 inches
    num result;
    result = double.parse(input) * 39370.08;
    return result.toString();
  }

  ////////////////////////////////////////////////////Meter party//////////////////////////////////////////////////////////

  //Meter to KiloMeter
  String MToKm(String input) {
    num result;
    result = double.parse(input) * 1 / 1000;
    return result.toString();
  }

  //Meter to Decimeter
  String MToDm(String input) {
    //1m = 10 Dm
    num result;
    result = double.parse(input) * 10;
    return result.toString();
  }

  //Meter to Centimeter
  String MToCm(String input) {
    //1m = 100 cm
    num result;
    result = double.parse(input) * 100;
    return result.toString();
  }

  //Meter to Milimeter
  String MToMm(String input) {
    //1m = 1000 mm
    num result;
    result = double.parse(input) * 1000;
    return result.toString();
  }

  //Meter to Namo
  String MToNm(String input) {
    //1m = 1000000000 nm
    num result;
    result = double.parse(input) * 1000000000;
    return result.toString();
  }

  //Meter to yard
  String MToYds(String input) {
    //1m = 1.09361 yard
    num result;
    result = double.parse(input) * 1.09361;
    return result.toString();
  }

  //Meter to foot
  String MToFts(String input) {
    //1m = 3.2808399 feet
    num result;
    result = double.parse(input) * 3.2808399;
    return result.toString();
  }

  //Meter to inch
  String MToInch(String input) {
    //1m = 39.3700727 inch
    num result;
    result = double.parse(input) * 39.3700727;
    return result.toString();
  }

  //////////////////////////////////////////////////////////decimeter party//////////////////////////////////////////

  //Decimeter to Km
  String DmToKm(String input) {
    //1km = 10.000dm
    num result;
    result = double.parse(input) * 0.0001;
    return result.toString();
  }

  //Decimeter to Meter
  String DmToM(String input) {
    //1m = 10dm
    num result;
    result = double.parse(input) * 0.1;
    return result.toString();
  }

  //Decimeter to Cm
  String DmToCm(String input) {
    //1dm = 10cm
    num result;
    result = double.parse(input) * 10;
    return result.toString();
  }

  //Decimeter to Mm
  String DmToMm(String input) {
    //1dm = 100mm
    num result;
    result = double.parse(input) * 100;
    return result.toString();
  }

  //Decimeter to Nano
  String DmToNano(String input) {
    //1dm = 100 000 000 nano
    num result;
    result = double.parse(input) * 100000000;
    return result.toString();
  }

  //Decimeter to yard
  String DmToYds(String input) {
    //1dm = 0.109 yard
    num result;
    result = double.parse(input) * 0.109;
    return result.toString();
  }

//Decimeter to foot
  String DmToFt(String input) {
    //1dm = 0.328084
    num result;
    result = double.parse(input) * 0.328084;
    return result.toString();
  }

  //Decimeter to inche
  String DmToInch(String input) {
    //1dm = 3.937
    num result;
    result = double.parse(input) * 3.937;
    return result.toString();
  }

/////////////////////////////////// Centimeter party //////////////////////////////////////////////////////////////////
  //centimeter to Km
  String CmToKm(String input) {
    //1cm = 0.00001 km
    num result;
    result = double.parse(input) * 0.00001;
    return result.toString();
  }

  //centimeter to Meter
  String CmToM(String input) {
    //1cm = 0.01 m
    num result;
    result = double.parse(input) * 0.01;
    return result.toString();
  }

  //centimeter to dm
  String CmToDm(String input) {
    //1cm = 0.1 dm
    num result;
    result = double.parse(input) * 0.1;
    return result.toString();
  }

  //centimeter to Mm
  String CmToMm(String input) {
    //cm = 10mm
    num result;
    result = double.parse(input) * 10;
    return result.toString();
  }

  //centimeter to Nano
  String CmToNano(String input) {
    //1cm = 10 000 000 nano
    num result;
    result = double.parse(input) * 10000000;
    return result.toString();
  }

  //centimeter to yard
  String CmToYds(String input) {
    //1cm = 0.010936133 yard
    num result;
    result = double.parse(input) * 0.010936133;
    return result.toString();
  }

//centimeter to foot
  String CmToFt(String input) {
    //1cm = 0.032808399 feet
    num result;
    result = double.parse(input) * 0.032808399;
    return result.toString();
  }

  //centimeter to inche
  String CmToInch(String input) {
    //1dm = 0.394
    num result;
    result = double.parse(input) * 0.394;
    return result.toString();
  }

/////////////////////////////////// Milimeter party //////////////////////////////////////////////////////////////////
  //Milimeter to Km
  String MmToKm(String input) {
    //1mm = 0.000001 km
    num result;
    result = double.parse(input) * 0.000001;
    return result.toString();
  }

  //Milimeter to Meter
  String MmToM(String input) {
    //1cm = 0.001 m
    num result;
    result = double.parse(input) * 0.001;
    return result.toString();
  }

  //Milimeter to dm
  String MmToDm(String input) {
    //1cm = 0.01 dm
    num result;
    result = double.parse(input) * 0.01;
    return result.toString();
  }

  //Milimeter to cm
  String MmToCm(String input) {
    //1mm = 0.1cm
    num result;
    result = double.parse(input) * 10;
    return result.toString();
  }

  //Milimeter to Nano
  String MmToNano(String input) {
    //1mm = 1000 000 nano
    num result;
    result = double.parse(input) * 1000000;
    return result.toString();
  }

  //Milimeter to yard
  String MmToYds(String input) {
    //1mm = 0.00109 yard
    num result;
    result = double.parse(input) * 0.00109;
    return result.toString();
  }

//Milimeter to foot
  String MmToFt(String input) {
    //1mm = 0.00328084 feet
    num result;
    result = double.parse(input) * 0.00328084;
    return result.toString();
  }

  //Milimeter to inche
  String MmToInch(String input) {
    //1dm = 0.0393701 inch
    num result;
    result = double.parse(input) * 0.0393701;
    return result.toString();
  }

/////////////////////////////////// Nanometer party //////////////////////////////////////////////////////////////////
  //Nanometer to Km
  String NanoToKm(String input) {
    //1nn = 0.000000000001 km
    num result;
    result = double.parse(input) * 0.000000000001;
    return result.toString();
  }

  //Nanometer to Meter
  String NanoToM(String input) {
    //1nn = 0.000000001 m
    num result;
    result = double.parse(input) * 0.000000001;
    return result.toString();
  }

  //Nanometer to dm
  String NanoToDm(String input) {
    //1nn = 0.00000001 dm
    num result;
    result = double.parse(input) * 0.00000001;
    return result.toString();
  }

  //Nanometer to cm
  String NanoToCm(String input) {
    //1nn = 0.0000001cm
    num result;
    result = double.parse(input) * 0.0000001;
    return result.toString();
  }

  //Nanometer to mm
  String NanoToMm(String input) {
    //1nn = 0.000001 mm
    num result;
    result = double.parse(input) * 1000000;
    return result.toString();
  }

  //Nanometer to yard
  String NanoToYds(String input) {
    //1mm = 0.0000000010936133 yard
    num result;
    result = double.parse(input) * 0.0000000010936133;
    return result.toString();
  }

//Nanometer to foot
  String NanoToFt(String input) {
    //1mm = 0.0000000032808399 feet
    num result;
    result = double.parse(input) * 0.0000000032808399;
    return result.toString();
  }

  //Nanometer to inche
  String NanoToInch(String input) {
    //1dm = 0.0000000393700787401 inch
    num result;
    result = double.parse(input) * 0.0000000393700787401;
    return result.toString();
  }
/////////////////////////////////// Feet party //////////////////////////////////////////////////////////////////

  //Feet to Km
  String FeetToKm(String input) {
    //1ft = 0.0003048 km
    num result;
    result = double.parse(input) * 0.0003048;
    return result.toString();
  }

  //Feet to Meter
  String FeetToM(String input) {
    //1ft = 0.3048 m
    num result;
    result = double.parse(input) * 0.3048;
    return result.toString();
  }

  //Feet to dm
  String FeetToDm(String input) {
    //1ft = 3.04800 dm
    num result;
    result = double.parse(input) * 3.04800;
    return result.toString();
  }

  //Feet to cm
  String FeetToCm(String input) {
    //1ft = 30.48cm
    num result;
    result = double.parse(input) * 30.48;
    return result.toString();
  }

  //Feet to mm
  String FeetToMm(String input) {
    //1ft = 304.8 mm
    num result;
    result = double.parse(input) * 304.8;
    return result.toString();
  }

  //Feet to yard
  String FeetToYds(String input) {
    //1ft = 0.333333333 yard
    num result;
    result = double.parse(input) * 0.333333333;
    return result.toString();
  }

//Feet to foot
  String FeetToNano(String input) {
    //1ft = 304800000 nano
    num result;
    result = double.parse(input) * 304800000;
    return result.toString();
  }

  //Feet to inche
  String FeetToInch(String input) {
    //1dm = 12 inch
    num result;
    result = double.parse(input) * 12;
    return result.toString();
  }

/////////////////////////////////// Inch party //////////////////////////////////////////////////////////////////
  //Inch to Km
  String InchToKm(String input) {
    //1inch = 0.0000254 km
    num result;
    result = double.parse(input) * 0.0000254;
    return result.toString();
  }

  //Inch to Meter
  String InchToM(String input) {
    //1inch = 0.0254 m
    num result;
    result = double.parse(input) * 0.0254;
    return result.toString();
  }

  //Inch to dm
  String InchToDm(String input) {
    //1inch = 0.254 dm
    num result;
    result = double.parse(input) * 0.254;
    return result.toString();
  }

  //Inch to cm
  String InchToCm(String input) {
    //1inch = 2.54cm
    num result;
    result = double.parse(input) * 2.54;
    return result.toString();
  }

  //Inch to mm
  String InchToMm(String input) {
    //1inch = 25.4 mm
    num result;
    result = double.parse(input) * 25.4;
    return result.toString();
  }

  //Inch to yard
  String InchToYds(String input) {
    //1inch = 0.0277778 yard
    num result;
    result = double.parse(input) * 0.0277778;
    return result.toString();
  }

//Inch to foot
  String InchToNano(String input) {
    //1inch = 25400000 nano
    num result;
    result = double.parse(input) * 25400000;
    return result.toString();
  }

  //Inch to inche
  String InchToFeet(String input) {
    //1inch = 0.0833333 inch
    num result;
    result = double.parse(input) * 0.0833333;
    return result.toString();
  }

  ///////////////////////////////// Yard party //////////////////////////////////////////////////////////////////////////////////
//Yard to km
  String YrdToKm(String input) {
    //1yard = 0.0009144 km
    num result;
    result = double.parse(input) * 0.0009144;
    return result.toString();
  }

  //Yard to meter
  String YrdToM(String input) {
    //1yard = 0.9144m
    num result;
    result = double.parse(input) * 0.9144;
    return result.toString();
  }

  //Yard to decimeter
  String YrdToDm(String input) {
    //1yard = 9.14400 dm
    num result;
    result = double.parse(input) * 9.14400;
    return result.toString();
  }

  //Yard to centimeter
  String YrdToCm(String input) {
    //1yard = 91.44 cm
    num result;
    result = double.parse(input) * 91.44;
    return result.toString();
  }

  //Yard to milimeter
  String YrdToMm(String input) {
    //1yard = 914.4 mm
    num result;
    result = double.parse(input) * 914.4;
    return result.toString();
  }

  //Yard to nanometer
  String YrdToNano(String input) {
    //1yard = 914400000 nano
    num result;
    result = double.parse(input) * 914400000;
    return result.toString();
  }

  //Yard to foot
  String YrdToFeet(String input) {
    //1yard = 3 feet
    num result;
    result = double.parse(input) * 3;
    return result.toString();
  }

  //Yard to foot
  String YrdToInch(String input) {
    //1yard = 36 inches
    num result;
    result = double.parse(input) * 36;
    return result.toString();
  }
}
