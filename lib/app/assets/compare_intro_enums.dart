import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

enum CompareIntroEnums {
  page1,
  page2,
  page3;

  String get text {
    switch (this) {
      case CompareIntroEnums.page1:
        return S.current.theNumberKingCastle;
      case CompareIntroEnums.page2:
        return S.current.toCrossYouMustChoose;
      case CompareIntroEnums.page3:
        return S.current.pickTheBiggerorSmaller;
    }
  }
}
