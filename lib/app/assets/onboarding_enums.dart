import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

enum OnboardingEnums {
  welcomePage,
  needHelpPage,
  goblinPage,
  helpToRestorePage;

  String get title {
    switch (this) {
      case OnboardingEnums.welcomePage:
        return S.current.welcomeToNumberland;
      case OnboardingEnums.needHelpPage:
        return S.current.butOhNo;
      case OnboardingEnums.goblinPage:
        return S.current.theMischievousGlobin;
      case OnboardingEnums.helpToRestorePage:
        return S.current.canYouHelpToRestore;
    }
  }

  String get imagePath {
    switch (this) {
      case OnboardingEnums.welcomePage:
        return Assets.images.bgOnboarding1.path;
      case OnboardingEnums.needHelpPage:
        return Assets.images.bgOnboarding2.path;
      case OnboardingEnums.goblinPage:
        return Assets.images.bgOnboarding3.path;
      case OnboardingEnums.helpToRestorePage:
        return Assets.images.bgOnboarding4.path;
    }
  }
}
