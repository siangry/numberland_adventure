import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/view/orderingNumberScreen/order_number_result_page.dart';

class OrderNumberGamePage extends StatefulWidget {
  final int levelId;

  const OrderNumberGamePage({super.key, required this.levelId});

  @override
  State<OrderNumberGamePage> createState() => _OrderNumberGamePageState();
}

class _OrderNumberGamePageState extends State<OrderNumberGamePage> {
  final Random random = Random();
  final AudioPlayer audioPlayer = AudioPlayer();
  int gameCount = 0;
  int score = 0;
  List<int> numbers = [];
  List<int> correctOrder = [];
  List<int?> userOrder = [];
  bool isTextVisible = false;
  bool isWrong = false;
  String resultText = '';
  String questionText = '';
  Color? resultTextColor;

  @override
  void initState() {
    super.initState();
    generateQuestion();
  }

  void generateQuestion() {
    setState(() {
      isTextVisible = false;
      isWrong = false;
      numbers = generateNumbers(widget.levelId);
      userOrder = List.filled(numbers.length, null);
    });

    questionText = random.nextBool()
        ? S.current.arrangeNumbersInAscending
        : S.current.arrangeNumbersInDescending;

    correctOrder = List.from(numbers)..sort();
    if (questionText == S.current.arrangeNumbersInDescending) {
      correctOrder = correctOrder.reversed.toList();
    }
  }

  List<int> generateNumbers(int levelId) {
    int count = levelId == 0
        ? 3
        : levelId == 1
            ? 6
            : 9;
    int maxNumber = levelId == 0
        ? 9
        : levelId == 1
            ? 99
            : 999;

    Set<int> numbers = {};
    while (numbers.length < count) {
      numbers.add(random.nextInt(maxNumber) + 1);
    }
    return numbers.toList();
  }

  void checkAnswer() async {
    if (userOrder.contains(null)) return;
    bool isCorrect =
        List<int>.from(userOrder).toString() == correctOrder.toString();

    setState(() {
      isTextVisible = true;
      resultText =
          isCorrect ? S.current.bingoYouAreCorrect : S.current.oopsYouAreWrong;
      resultTextColor = isCorrect ? ColorConstant.green : ColorConstant.red;
      if (!isCorrect) isWrong = true;
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
                    builder: (context) => OrderNumberResultPage(score: score)),
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
            image: Image.asset(Assets.images.bgOrderNumWhite.path).image,
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
                Column(
                  children: [
                    Text(
                      questionText,
                      style:
                          TextStyle(color: ColorConstant.black, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      S.current.fromLeftToRight,
                      style:
                          TextStyle(color: ColorConstant.black, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                      userOrder.length,
                      (index) => SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.24,
                          child: buildInputBox(index))),
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
                          S.current.theCorrectNumberIs(correctOrder.join(", ")),
                          style:
                              TextStyle(color: resultTextColor, fontSize: 24),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: numbers
                        .map((number) => Draggable<int>(
                              data: number,
                              feedback:
                                  buildNumberCard(number, isDragging: true),
                              childWhenDragging: Opacity(
                                  opacity: 0.5, child: buildNumberCard(number)),
                              child: buildNumberCard(number),
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
            Positioned(top: 10, right: 10, child: FloatingButton())
          ]),
        ),
      ),
    );
  }

  Widget buildInputBox(int index) {
    return DragTarget<int>(
      onAccept: (value) {
        setState(() {
          userOrder[index] = value;
          if (!userOrder.contains(null)) checkAnswer();
        });
      },
      builder: (_, __, ___) => Container(
        width: MediaQuery.sizeOf(context).width * 0.05,
        height: MediaQuery.sizeOf(context).height * 0.1,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: userOrder[index] == null ? Colors.white : getRandomColor(),
          boxShadow: [BoxShadow(color: Colors.black38, offset: Offset(6, 6))],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            userOrder[index]?.toString() ?? '',
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget buildNumberCard(int num, {bool isDragging = false}) {
    return Container(
        width: MediaQuery.sizeOf(context).height * 0.08,
        height: MediaQuery.sizeOf(context).height * 0.06,
        decoration: BoxDecoration(
            color: isDragging ? ColorConstant.grey : ColorConstant.white,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(num.toString(),
                style: TextStyle(color: ColorConstant.black, fontSize: 24),
                textAlign: TextAlign.center),
          ],
        ));
  }
}
