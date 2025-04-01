import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class ComposeNumberResultPage extends StatefulWidget {
  final int score;

  const ComposeNumberResultPage({super.key, required this.score});

  @override
  State<ComposeNumberResultPage> createState() =>
      _ComposeNumberResultPageState();
}

class _ComposeNumberResultPageState extends State<ComposeNumberResultPage> {
  int? resultId;

  void getResult() {
    final int finalScore = widget.score;

    if (finalScore >= 8) {
      resultId = GameResultEnums.win.id;
    } else {
      resultId = GameResultEnums.lose.id;
    }
  }

  @override
  void initState() {
    super.initState();
    getResult();
  }

  @override
  Widget build(BuildContext context) {
    final int finalScore = widget.score;

    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: resultId == 0
              ? DecorationImage(
                  image: Image.asset(GameResultEnums.win.composeBackgroundPath)
                      .image,
                  fit: BoxFit.cover,
                )
              : DecorationImage(
                  image: Image.asset(GameResultEnums.lose.composeBackgroundPath)
                      .image,
                  fit: BoxFit.cover,
                ),
        ),
        child: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextBox(
                    text:
                        ('Score: $finalScore/15\n${resultId == 0 ? GameResultEnums.win.composeText : GameResultEnums.lose.composeText}'),
                    onNext: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MainPage()))),
              ],
            ),
            Positioned(top: 30, right: 16, child: FloatingButton())
          ]),
        ),
      ),
    );
  }
}
