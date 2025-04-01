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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
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
                child: SafeArea(
                  minimum: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 70),
                      CustomTextBox(
                          text: curPage.title, onNext: navigateToNext),
                    ],
                  ),
                ),
              );
            }),
        Positioned(top: 30, right: 16, child: FloatingButton())
      ]),
    );
  }
}
