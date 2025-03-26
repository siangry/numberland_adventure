import 'package:numberland_adventure/app/exporter/importer_app_general.dart';
import 'package:numberland_adventure/app/widget/touch_opacity.dart';

class CustomTextBox extends StatelessWidget {
  final String text;
  final Widget? nextPagePath;
  final VoidCallback? onNext;
  final bool isBottom;

  const CustomTextBox({
    super.key,
    required this.text,
    this.nextPagePath,
    this.onNext,
    this.isBottom = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          TouchableOpacity(
            child: Image.asset(Assets.images.icNextArrow.path),
            onPressed: () {
              if (onNext != null) {
                onNext!();
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => nextPagePath!),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
