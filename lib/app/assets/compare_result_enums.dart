import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

enum CompareResultEnums {
  win(0),
  lose(1);

  final int id;

  const CompareResultEnums(this.id);

  String get backgroundPath {
    switch (this) {
      case CompareResultEnums.win:
        return Assets.images.bgCompareNumWin.path;
      case CompareResultEnums.lose:
        return Assets.images.bgCompareNumLose.path;
    }
  }

  String get text {
    switch (this) {
      case CompareResultEnums.win:
        return S.current.congratulationYouHaveLifted;
      case CompareResultEnums.lose:
        return S.current.oopsYouHaventLifted;
    }
  }
}
