import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/exporter/importer_app_screen.dart';

class SelectLevelPage extends StatefulWidget {
  final int menuId;

  const SelectLevelPage({super.key, required this.menuId});

  @override
  State<SelectLevelPage> createState() => _SelectLevelPageState();
}

class _SelectLevelPageState extends State<SelectLevelPage> {
  void navigateToNext(int id) {
    final int menuId = widget.menuId;

    if (menuId == MenuEnums.magicalBridge.id) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CompareNumberMainPage(levelId: id)));
    } else if (menuId == MenuEnums.towerOfNumbers.id) {
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => OrderNumberMainPage(levelId: id)),
      );
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => ComposeNumberMainPage(levelId: id)),
      );
    }
  }

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
                  ...LevelEnums.values.map((levelItem) {
                    final int levelId = levelItem.id;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: TouchableOpacity(
                          child:
                              buildLevelCard(levelItem.title, levelItem.color),
                          onPressed: () => navigateToNext(levelId)),
                    );
                  }),
                ],
              ),
            )),
        Positioned(top: 30, right: 16, child: FloatingButton())
      ]),
    );
  }

  Widget buildLevelCard(String title, Color cardColor) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      height: MediaQuery.sizeOf(context).height * 0.1,
      decoration: BoxDecoration(
          color: cardColor,
          boxShadow: [BoxShadow(color: Colors.black38, offset: Offset(6, 6))],
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: ColorConstant.black,
              fontSize: 22,
              fontFamily: GeneralConstant.fontAcme),
        ),
      ),
    );
  }
}
