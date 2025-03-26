import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

enum ComposeIntroEnums {
  page1,
  page2,
  page3;

  String get text {
    switch (this) {
      case ComposeIntroEnums.page1:
        return S.current.theNumberWizardNeeds;
      case ComposeIntroEnums.page2:
        return S.current.toCompleteTheSpell;
      case ComposeIntroEnums.page3:
        return S.current.mixTheRightNumbers;
    }
  }
}
