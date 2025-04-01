import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class CompareNumberGamePage extends StatefulWidget {
  final int levelId;

  const CompareNumberGamePage({super.key, required this.levelId});

  @override
  State<CompareNumberGamePage> createState() => _CompareNumberGamePageState();
}

class _CompareNumberGamePageState extends State<CompareNumberGamePage> {
  final Random random = Random();
  int gameCount = 0;
  int score = 0;
  int num1 = 0, num2 = 0;
  bool isBiggerQuestion = true;
  bool isTextVisible = false;
  int? correctAns;
  String? questionText;
  String resultText = '';
  Color? resultTextColor;

  @override
  void initState() {
    super.initState();
    generateQuestion();
  }

  void generateQuestion() {
    setState(() {
      isTextVisible = false;
    });

    int maxNumber = widget.levelId == 0
        ? 9
        : widget.levelId == 1
            ? 99
            : 999;

    num1 = random.nextInt(maxNumber + 1);
    do {
      num2 = random.nextInt(maxNumber + 1);
    } while (num2 == num1);

    isBiggerQuestion = random.nextBool();
    questionText = isBiggerQuestion
        ? S.current.whichNumberIsBigger
        : S.current.whichNumberIsSmaller;
    correctAns = null;
  }

  void checkAnswer(int selected) {
    bool isCorrect = (isBiggerQuestion && selected == max(num1, num2)) ||
        (!isBiggerQuestion && selected == min(num1, num2));

    if (isBiggerQuestion) {
      correctAns = max(num1, num2);
    } else {
      correctAns = min(num1, num2);
    }

    setState(() {
      isTextVisible = true;
      resultText =
          isCorrect ? S.current.bingoYouAreCorrect : S.current.oopsYouAreWrong;
      resultTextColor = isCorrect ? ColorConstant.green : ColorConstant.red;
    });

    if (isCorrect) {
      score++;
    }

    if (gameCount < 14) {
      Future.delayed(const Duration(seconds: 5), () {
        setState(() {
          gameCount++;
          generateQuestion();
        });
      });
    } else {
      Future.delayed(
          const Duration(seconds: 5),
          () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>
                        CompareNumberResultPage(score: score)),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(Assets.images.bgCompareNumWhite.path).image,
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          minimum: const EdgeInsets.all(16),
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  questionText ?? '',
                  style: TextStyle(color: ColorConstant.black, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: buildNumberCard(num1),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: buildNumberCard(num2),
                      ),
                    ),
                  ],
                ),
                Visibility(
                    visible: isTextVisible,
                    child: Text(
                      resultText,
                      style: TextStyle(color: resultTextColor, fontSize: 24),
                    ))
              ],
            ),
            Positioned(top: 30, right: 16, child: FloatingButton())
          ]),
        ),
      ),
    );
  }

  Widget buildNumberCard(int num) {
    return Stack(clipBehavior: Clip.none, children: [
      TouchableOpacity(
        child: Container(
            height: MediaQuery.sizeOf(context).height * 0.16,
            decoration: BoxDecoration(
                color: getRandomColor(),
                boxShadow: [
                  BoxShadow(color: Colors.black38, offset: Offset(6, 6))
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Center(
                child: Text(num.toString(),
                    style:
                        TextStyle(color: ColorConstant.black, fontSize: 24)))),
        onPressed: () => checkAnswer(num),
      ),
      if (isTextVisible)
        Positioned(
            top: -30,
            left: 10,
            child: num == correctAns
                ? Image.asset(Assets.images.icCorrect.path)
                : Image.asset(Assets.images.icWrong.path))
    ]);
  }
}
