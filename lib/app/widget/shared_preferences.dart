import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

class AppState extends ChangeNotifier {
  Locale _locale =  LocaleConstant.en;

  Locale get locale => _locale;

  AppState() {
    _loadLocale();
  }

  void _loadLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String savedLanguage =
        prefs.getString(S.current.language) ?? S.current.english;
    _locale = Locale(savedLanguage == S.current.english
        ? S.current.en
        : savedLanguage == S.current.chinese
            ? S.current.zh
            : S.current.ms);
    notifyListeners();
  }

  void setLocale(Locale newLocale) async {
    _locale = newLocale;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
        S.current.english,
        newLocale.languageCode == S.current.en
            ? S.current.english
            : newLocale.languageCode == S.current.zh
                ? S.current.chinese
                : S.current.ms);
    notifyListeners();
  }
}
