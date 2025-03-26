import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

enum OrderIntroEnums {
  page1,
  page2,
  page3;

  String get text {
    switch (this) {
      case OrderIntroEnums.page1:
        return S.current.theMixUpGlobin;
      case OrderIntroEnums.page2:
        return S.current.theOnlyWayToFix;
      case OrderIntroEnums.page3:
        return S.current.arrangetheNumberBlocks;
    }
  }
}
