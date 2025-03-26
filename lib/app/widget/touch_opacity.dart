import 'package:flutter/cupertino.dart';

class TouchableOpacity extends StatelessWidget {
  const TouchableOpacity({
    super.key,
    required this.child,
    this.onPressed,
    this.padding = EdgeInsets.zero,
    this.alignment = Alignment.center,
    this.pressedOpacity = 0.4,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsets padding;
  final Alignment alignment;

  /// The opacity that the button will fade to when it is pressed.
  /// The button will have an opacity of 1.0 when it is not pressed.
  final double? pressedOpacity;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      alignment: alignment,
      minSize: 0,
      padding: padding,
      pressedOpacity: pressedOpacity,
      child: child,
    );
  }
}