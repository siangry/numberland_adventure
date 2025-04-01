import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class ComposeNumberMainPage extends StatefulWidget {
  final int levelId;

  const ComposeNumberMainPage({super.key, required this.levelId});

  @override
  State<ComposeNumberMainPage> createState() => _ComposeNumberMainPageState();
}

class _ComposeNumberMainPageState extends State<ComposeNumberMainPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  void navigateToNext(int id) {
    if (_currentPage < ComposeIntroEnums.values.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => ComposeNumberGamePage(levelId: id)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final int levelId = widget.levelId;

    return Scaffold(
      body: PageView.builder(
          controller: _controller,
          itemCount: ComposeIntroEnums.values.length,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            final curPage = ComposeIntroEnums.values[index];

            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(Assets.images.bgComposeNum.path).image,
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
                          text: curPage.text,
                          onNext: () => navigateToNext(levelId)),
                    ],
                  ),
                  Positioned(top: 30, right: 16, child: FloatingButton())
                ]),
              ),
            );
          }),
    );
  }
}
