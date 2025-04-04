import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class OrderNumberResultPage extends StatefulWidget {
  final int score;

  const OrderNumberResultPage({super.key, required this.score});

  @override
  State<OrderNumberResultPage> createState() => _OrderNumberResultPageState();
}

class _OrderNumberResultPageState extends State<OrderNumberResultPage> {
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
                  image: Image.asset(GameResultEnums.win.orderBackgroundPath)
                      .image,
                  fit: BoxFit.cover,
                )
              : DecorationImage(
                  image: Image.asset(GameResultEnums.lose.orderBackgroundPath)
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
                        ('${S.current.score} $finalScore/15\n${resultId == 0 ? GameResultEnums.win.orderText : GameResultEnums.lose.orderText}'),
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
