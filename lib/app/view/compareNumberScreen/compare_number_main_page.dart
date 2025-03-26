import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class CompareNumberMainPage extends StatefulWidget {
  final int levelId;

  const CompareNumberMainPage({super.key, required this.levelId});

  @override
  State<CompareNumberMainPage> createState() => _CompareNumberMainPageState();
}

class _CompareNumberMainPageState extends State<CompareNumberMainPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  void navigateToNext(int id) {
    if (_currentPage < CompareIntroEnums.values.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => CompareNumberGamePage(levelId: id)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final int levelId = widget.levelId;

    return Scaffold(
      body: PageView.builder(
          controller: _controller,
          itemCount: CompareIntroEnums.values.length,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            final curPage = CompareIntroEnums.values[index];

            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(Assets.images.bgCompareNum.path).image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextBox(
                        text: curPage.text,
                        onNext: () => navigateToNext(levelId)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
