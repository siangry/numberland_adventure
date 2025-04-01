import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AudioManager().playMusic();

    return Consumer<AppState>(builder: (context, appState, child) {
      return MaterialApp(
        title: 'Numberland Adventure',
        locale: appState.locale,
        supportedLocales: [
          LocaleConstant.en,
          LocaleConstant.zh,
          LocaleConstant.ms,
        ],
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            useMaterial3: true,
            fontFamily: GeneralConstant.fontAcme),
        home: const OnboardingPage(),
      );
    });
  }
}
