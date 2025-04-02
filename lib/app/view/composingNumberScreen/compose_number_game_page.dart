import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/view/composingNumberScreen/compose_number_result_page.dart';

class ComposeNumberGamePage extends StatefulWidget {
  final int levelId;

  const ComposeNumberGamePage({super.key, required this.levelId});

  @override
  State<ComposeNumberGamePage> createState() => _ComposeNumberGamePageState();
}

class _ComposeNumberGamePageState extends State<ComposeNumberGamePage> {
  final Random random = Random();
  int gameCount = 0;
  int score = 0;
  int num1 = 0, num2 = 0;
  String? operator;
  int? correctAns;
  int? selectedNum;
  bool isTextVisible = false;
  bool isWrong = false;
  String resultText = '';
  Color? resultTextColor;
  List<int> options = [];

  @override
  void initState() {
    super.initState();
    generateQuestion();
  }

  void generateQuestion() {
    setState(() {
      isTextVisible = false;
      isWrong = false;
    });
    selectedNum = null;
    int maxDigit = (widget.levelId == 0)
        ? 9
        : (widget.levelId == 1)
            ? 99
            : 999;
    int minDigit = (widget.levelId == 0)
        ? 1
        : (widget.levelId == 1)
            ? 10
            : 100;

    num1 = random.nextInt(maxDigit - minDigit + 1) + minDigit;
    num2 = random.nextInt(maxDigit - minDigit + 1) + minDigit;
    operator =
        (random.nextBool()) ? GeneralConstant.plus : GeneralConstant.minus;

    if (operator == GeneralConstant.minus) {
      if (num1 < num2) {
        int temp = num1;
        num1 = num2;
        num2 = temp;
      }
      correctAns = num1 - num2;
    } else {
      correctAns = num1 + num2;
    }

    generateAnswerOptions();
  }

  void generateAnswerOptions() {
    Set<int> uniqueOptions = {correctAns ?? 0};

    while (uniqueOptions.length < 3) {
      int randomNumber = Random().nextInt((widget.levelId == 0)
              ? 9
              : (widget.levelId == 1)
                  ? 99
                  : 999) +
          1;
      uniqueOptions.add(randomNumber);
    }

    options = uniqueOptions.toList();
    options.shuffle();
  }

  void checkAnswer(int userAnswer) {
    bool isCorrect = (userAnswer == correctAns);
    setState(() {
      selectedNum = userAnswer;
      isTextVisible = true;
      resultText =
          isCorrect ? S.current.bingoYouAreCorrect : S.current.oopsYouAreWrong;
      resultTextColor = isCorrect ? ColorConstant.green : ColorConstant.red;

      if (resultText == S.current.oopsYouAreWrong) {
        isWrong = true;
      }
    });

    if (isCorrect) {
      score++;
    }

    if (gameCount < 14) {
      Future.delayed(const Duration(seconds: 5), () {
        setState(() {
          gameCount++;
          generateQuestion();
          selectedNum = null;
        });
      });
    } else {
      Future.delayed(
          const Duration(seconds: 5),
          () => Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>
                        ComposeNumberResultPage(score: score)),
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
            image: Image.asset(Assets.images.bgComposeNumWhite.path).image,
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
                  S.current.weNeedToMake('$num1 $operator $num2'),
                  style: TextStyle(color: ColorConstant.black, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: buildNumberCard(num1),
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(operator ?? '',
                          style: TextStyle(
                              color: ColorConstant.black, fontSize: 24)),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: buildNumberCard(num2),
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(GeneralConstant.equal,
                          style: TextStyle(
                              color: ColorConstant.black, fontSize: 24)),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: buildNumberCard(selectedNum),
                    )),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                        visible: isTextVisible,
                        child: Text(
                          resultText,
                          style:
                              TextStyle(color: resultTextColor, fontSize: 24),
                        )),
                    Visibility(
                        visible: isWrong,
                        child: Text(
                            S.current.theCorrectNumberIs(correctAns ?? ''),
                            style: TextStyle(
                                color: resultTextColor, fontSize: 24))),
                  ],
                ),
                buildNumberOption()
              ],
            ),
            Positioned(top: 30, right: 16, child: FloatingButton())
          ]),
        ),
      ),
    );
  }

  Widget buildNumberCard(int? num) {
    return Container(
        height: MediaQuery.sizeOf(context).height * 0.1,
        decoration: BoxDecoration(
            color: getRandomColor(),
            boxShadow: [BoxShadow(color: Colors.black38, offset: Offset(6, 6))],
            borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(num != null ? num.toString() : '',
                style: TextStyle(color: ColorConstant.black, fontSize: 24))));
  }

  Widget buildNumberOption() {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.08,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstant.white,
          border: Border.all(color: ColorConstant.black, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: options.map((answer) {
          return TouchableOpacity(
            onPressed: () => checkAnswer(answer),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(answer.toString(),
                  style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 24,
                      fontFamily: GeneralConstant.fontAcme)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
