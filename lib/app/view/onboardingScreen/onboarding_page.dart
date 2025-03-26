import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  void navigateToNext() {
    if (_currentPage < OnboardingEnums.values.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    }
  }

  void changeLanguage(Locale locale) {
    setState(() {
      ///todo: implement language change
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: _controller,
          itemCount: OnboardingEnums.values.length,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            final curPage = OnboardingEnums.values[index];

            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(curPage.imagePath).image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //buildLanguageSelector(),
                    CustomTextBox(text: curPage.title, onNext: navigateToNext),
                  ],
                ),
              ),
            );
          }),
    );
  }

// Widget buildLanguageSelector() {
//   return Positioned(
//     top: 40,
//     right: 20,
//     child: LanguageSelector(onLanguageChanged: changeLanguage),
//   );
// }
}
