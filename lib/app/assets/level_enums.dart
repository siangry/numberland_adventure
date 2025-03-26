import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

enum LevelEnums {
  easy(0),
  medium(1),
  hard(2);

  final int id;

  const LevelEnums(this.id);

  String get title {
    switch (this) {
      case LevelEnums.easy:
        return S.current.easy;
      case LevelEnums.medium:
        return S.current.medium;
      case LevelEnums.hard:
        return S.current.hard;
    }
  }

  Color get color {
    switch (this) {
      case LevelEnums.easy:
        return ColorConstant.pastelGreen;
      case LevelEnums.medium:
        return ColorConstant.yellow;
      case LevelEnums.hard:
        return ColorConstant.pink;
    }
  }
}
