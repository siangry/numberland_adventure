import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

class GeneralConstant {
  static const String fontAcme = 'Acme';
  static const int gameCount = 10;
}

class ColorConstant {
  static const red = Color(0xFFE50012);
  static const green = Color(0xFF15BC11);
  static const pastelGreen = Color(0xFFABF2A1);
  static const pink = Color(0xFFE195AB);
  static const yellow = Color(0xFFFFF574);
  static const blue = Color(0xFF6AC5FE);
  static const purple = Color(0xFFA19AD3);
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
}

Color getRandomColor() {
  List<Color> colorList = [
    ColorConstant.pastelGreen,
    ColorConstant.pink,
    ColorConstant.yellow,
    ColorConstant.blue,
    ColorConstant.purple,
  ];
  return colorList[Random().nextInt(colorList.length)];
}

class LocaleConstant {
  static const en = Locale('en');
  static const zh = Locale('zh');
  static const ms = Locale('ms');
}
