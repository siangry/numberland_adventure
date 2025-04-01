import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class MainPage extends StatefulWidget {
  // final Function(Locale) setLocale;

  const MainPage({super.key
   // , required this.setLocale
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset(Assets.images.bgHome.path).image,
                  fit: BoxFit.cover),
            ),
            child: SafeArea(
              minimum: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...MenuEnums.values.map((menuItem) {
                    final int menuId = menuItem.id;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: TouchableOpacity(
                        child: buildMenuCard(menuItem.title, menuItem.color),
                        onPressed: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SelectLevelPage(
                                      menuId: menuId,
                                    ))),
                      ),
                    );
                  }),
                ],
              ),
            )),
        Positioned(
            top: 30, right: 16, child: FloatingButton(
            //setLocale: setLocale
    ))
      ]),
    );
  }

  Widget buildMenuCard(String title, Color cardColor) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      height: MediaQuery.sizeOf(context).height * 0.14,
      decoration: BoxDecoration(
          color: cardColor,
          boxShadow: [BoxShadow(color: Colors.black38, offset: Offset(6, 6))],
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: ColorConstant.black, fontSize: 20),
        ),
      ),
    );
  }
}
