import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';
import 'package:numberland_adventure/app/widget/language_selector.dart';

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //buildLanguageSelector(),
                    TextBox(
                      text:curPage.title,
                      nextPagePath: const OnboardingPage(),
                    ),
                    
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget buildLanguageSelector(){
    return Positioned(
            top: 40,
            right: 20,
            child: LanguageSelector(onLanguageChanged: changeLanguage),
          );
  }
}
