import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

class LanguageSelector extends StatefulWidget {
  final Function(Locale) onLanguageChanged;

  const LanguageSelector({super.key, required this.onLanguageChanged});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  Locale _selectedLocale = LocaleConstant.en;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
      value: _selectedLocale,
      items: [
        DropdownMenuItem(
          child: Text(S.current.en),
          value: LocaleConstant.en,
        ),
        DropdownMenuItem(
          child: Text(S.current.zh),
          value: LocaleConstant.zh,
        ),
        DropdownMenuItem(
          child: Text(S.current.ms),
          value: LocaleConstant.ms,
        ),
      ],
      onChanged: (locale) {
        if (locale != null) {
          setState(() {
            _selectedLocale = locale;
          });
          widget.onLanguageChanged(locale);
        }
      },
    );
  }
}
