import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class OrderNumberMainPage extends StatefulWidget {
  final int levelId;

  const OrderNumberMainPage({super.key, required this.levelId});

  @override
  State<OrderNumberMainPage> createState() => _OrderNumberMainPageState();
}

class _OrderNumberMainPageState extends State<OrderNumberMainPage> {
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
            builder: (context) => OrderNumberGamePage(levelId: id)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final int levelId = widget.levelId;

    return Scaffold(
      body: PageView.builder(
          controller: _controller,
          itemCount: OrderIntroEnums.values.length,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            final curPage = OrderIntroEnums.values[index];

            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(Assets.images.bgOrderNum.path).image,
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
