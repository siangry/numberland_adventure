import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

enum GameResultEnums {
  win(0),
  lose(1);

  final int id;

  const GameResultEnums(this.id);

  String get compareBackgroundPath {
    switch (this) {
      case GameResultEnums.win:
        return Assets.images.bgCompareNumWin.path;
      case GameResultEnums.lose:
        return Assets.images.bgCompareNumLose.path;
    }
  }

  String get orderBackgroundPath {
    switch (this) {
      case GameResultEnums.win:
        return Assets.images.bgOrderNumWin.path;
      case GameResultEnums.lose:
        return Assets.images.bgOrderNumLose.path;
    }
  }

  String get composeBackgroundPath {
    switch (this) {
      case GameResultEnums.win:
        return Assets.images.bgComposeNumWin.path;
      case GameResultEnums.lose:
        return Assets.images.bgComposeNumLose.path;
    }
  }

  String get compareText {
    switch (this) {
      case GameResultEnums.win:
        return S.current.congratulationYouHaveLifted;
      case GameResultEnums.lose:
        return S.current.oopsYouHaventLifted;
    }
  }

  String get orderText {
    switch (this) {
      case GameResultEnums.win:
        return S.current.congratulationYouHavehelp;
      case GameResultEnums.lose:
        return S.current.oopsTheTowerIsNotBuilt;
    }
  }

  String get composeText {
    switch (this) {
      case GameResultEnums.win:
        return S.current.congratulationYouHaveCreated;
      case GameResultEnums.lose:
        return S.current.oopsYouHaveCreated;
    }
  }
}
