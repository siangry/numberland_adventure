import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

enum MenuEnums {
  magicalBridge(0),
  towerOfNumbers(1),
  magicalPotions(2);

  final int id;

  const MenuEnums(this.id);

  String get title {
    switch (this) {
      case MenuEnums.magicalBridge:
        return S.current.theMagicBridge;
      case MenuEnums.towerOfNumbers:
        return S.current.theTowerOfNumbers;
      case MenuEnums.magicalPotions:
        return S.current.theMagicalPotion;
    }
  }

  Color get color {
    switch (this) {
      case MenuEnums.magicalBridge:
        return ColorConstant.purple;
      case MenuEnums.towerOfNumbers:
        return ColorConstant.yellow;
      case MenuEnums.magicalPotions:
        return ColorConstant.pink;
    }
  }
}
