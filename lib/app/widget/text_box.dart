import 'package:flutter/material.dart';
import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

class TextBox extends StatelessWidget {
  final String text;
  final Widget nextPagePath;
  final bool isBottom;

  const TextBox({
    super.key,
    required this.text,
    required this.nextPagePath,
    this.isBottom = true,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: isBottom ? null : 50, // If false, position at the top
      bottom: isBottom ? 50 : null, // If true, position at the bottom
      left: 20,
      right: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => nextPagePath),
              );
            },
            child: Image.asset(Assets.images.icNextArrow.path),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
