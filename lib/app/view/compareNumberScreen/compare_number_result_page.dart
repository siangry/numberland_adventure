import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class CompareNumberResultPage extends StatefulWidget {
  final int score;

  const CompareNumberResultPage({super.key, required this.score});

  @override
  State<CompareNumberResultPage> createState() =>
      _CompareNumberResultPageState();
}

class _CompareNumberResultPageState extends State<CompareNumberResultPage> {
  int? resultId;

  void getResult() {
    final int finalScore = widget.score;

    if (finalScore >= 8) {
      resultId = CompareResultEnums.win.id;
    } else {
      resultId = CompareResultEnums.lose.id;
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
                  image: Image.asset(Assets.images.bgCompareNumWin.path).image,
                  fit: BoxFit.cover,
                )
              : DecorationImage(
                  image: Image.asset(Assets.images.bgCompareNumLose.path).image,
                  fit: BoxFit.cover,
                ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextBox(
                  text:
                      ('Score: $finalScore/15\n${resultId == 0 ? CompareResultEnums.win.text : CompareResultEnums.lose.text}'),
                  onNext: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainPage()))),
            ],
          ),
        ),
      ),
    );
  }
}
