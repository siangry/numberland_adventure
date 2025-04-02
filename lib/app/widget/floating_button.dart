import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  final AudioManager _audioManager = AudioManager();

  void _showSettingsDialog(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.current.settings),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.current.language,
                    style: TextStyle(color: ColorConstant.black, fontSize: 18),
                  ),
                  DropdownButton<String>(
                    value: appState.locale.languageCode == S.current.en
                        ? S.current.english
                        : appState.locale.languageCode == S.current.zh
                            ? S.current.chinese
                            : S.current.malay,
                    items: [
                      S.current.english,
                      S.current.chinese,
                      S.current.malay
                    ].map((String language) {
                      return DropdownMenuItem<String>(
                          value: language,
                          child: Text(
                            language,
                            style: TextStyle(
                                color: ColorConstant.black, fontSize: 18),
                          ));
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        Locale newLocale = Locale(newValue == S.current.english
                            ? S.current.en
                            : newValue == S.current.chinese
                                ? S.current.zh
                                : S.current.ms);
                        appState.setLocale(newLocale);
                      }
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(S.current.music,
                      style:
                          TextStyle(color: ColorConstant.black, fontSize: 18)),
                  ValueListenableBuilder<bool>(
                      valueListenable: _audioManager.isPlaying,
                      builder: (context, isPlaying, child) {
                        return IconButton(
                          icon: Icon(
                              isPlaying ? Icons.volume_up : Icons.volume_off),
                          onPressed: () {
                            setState(() {
                              _audioManager.toggleMusic();
                            });
                          },
                        );
                      }),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _showSettingsDialog(context),
      child: Icon(Icons.settings),
    );
  }
}
