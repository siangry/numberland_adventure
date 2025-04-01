/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAudioGen {
  const $AssetsAudioGen();

  /// File path: assets/audio/audio_bgm.mp3
  String get audioBgm => 'assets/audio/audio_bgm.mp3';

  /// List of all assets
  List<String> get values => [audioBgm];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg_compare-num_lose.png
  AssetGenImage get bgCompareNumLose =>
      const AssetGenImage('assets/images/bg_compare-num_lose.png');

  /// File path: assets/images/bg_compare_num.png
  AssetGenImage get bgCompareNum =>
      const AssetGenImage('assets/images/bg_compare_num.png');

  /// File path: assets/images/bg_compare_num_white.png
  AssetGenImage get bgCompareNumWhite =>
      const AssetGenImage('assets/images/bg_compare_num_white.png');

  /// File path: assets/images/bg_compare_num_win.png
  AssetGenImage get bgCompareNumWin =>
      const AssetGenImage('assets/images/bg_compare_num_win.png');

  /// File path: assets/images/bg_compose_num.png
  AssetGenImage get bgComposeNum =>
      const AssetGenImage('assets/images/bg_compose_num.png');

  /// File path: assets/images/bg_compose_num_lose.png
  AssetGenImage get bgComposeNumLose =>
      const AssetGenImage('assets/images/bg_compose_num_lose.png');

  /// File path: assets/images/bg_compose_num_white.png
  AssetGenImage get bgComposeNumWhite =>
      const AssetGenImage('assets/images/bg_compose_num_white.png');

  /// File path: assets/images/bg_compose_num_win.png
  AssetGenImage get bgComposeNumWin =>
      const AssetGenImage('assets/images/bg_compose_num_win.png');

  /// File path: assets/images/bg_end_game.png
  AssetGenImage get bgEndGame =>
      const AssetGenImage('assets/images/bg_end_game.png');

  /// File path: assets/images/bg_home.png
  AssetGenImage get bgHome => const AssetGenImage('assets/images/bg_home.png');

  /// File path: assets/images/bg_onboarding1.png
  AssetGenImage get bgOnboarding1 =>
      const AssetGenImage('assets/images/bg_onboarding1.png');

  /// File path: assets/images/bg_onboarding2.png
  AssetGenImage get bgOnboarding2 =>
      const AssetGenImage('assets/images/bg_onboarding2.png');

  /// File path: assets/images/bg_onboarding3.png
  AssetGenImage get bgOnboarding3 =>
      const AssetGenImage('assets/images/bg_onboarding3.png');

  /// File path: assets/images/bg_onboarding4.png
  AssetGenImage get bgOnboarding4 =>
      const AssetGenImage('assets/images/bg_onboarding4.png');

  /// File path: assets/images/bg_order_num.png
  AssetGenImage get bgOrderNum =>
      const AssetGenImage('assets/images/bg_order_num.png');

  /// File path: assets/images/bg_order_num_lose.png
  AssetGenImage get bgOrderNumLose =>
      const AssetGenImage('assets/images/bg_order_num_lose.png');

  /// File path: assets/images/bg_order_num_white.png
  AssetGenImage get bgOrderNumWhite =>
      const AssetGenImage('assets/images/bg_order_num_white.png');

  /// File path: assets/images/bg_order_num_win.png
  AssetGenImage get bgOrderNumWin =>
      const AssetGenImage('assets/images/bg_order_num_win.png');

  /// File path: assets/images/ic_correct.png
  AssetGenImage get icCorrect =>
      const AssetGenImage('assets/images/ic_correct.png');

  /// File path: assets/images/ic_drop_down_arrow.png
  AssetGenImage get icDropDownArrow =>
      const AssetGenImage('assets/images/ic_drop_down_arrow.png');

  /// File path: assets/images/ic_logo.png
  AssetGenImage get icLogo => const AssetGenImage('assets/images/ic_logo.png');

  /// File path: assets/images/ic_next_arrow.png
  AssetGenImage get icNextArrow =>
      const AssetGenImage('assets/images/ic_next_arrow.png');

  /// File path: assets/images/ic_wrong.png
  AssetGenImage get icWrong =>
      const AssetGenImage('assets/images/ic_wrong.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bgCompareNumLose,
    bgCompareNum,
    bgCompareNumWhite,
    bgCompareNumWin,
    bgComposeNum,
    bgComposeNumLose,
    bgComposeNumWhite,
    bgComposeNumWin,
    bgEndGame,
    bgHome,
    bgOnboarding1,
    bgOnboarding2,
    bgOnboarding3,
    bgOnboarding4,
    bgOrderNum,
    bgOrderNumLose,
    bgOrderNumWhite,
    bgOrderNumWin,
    icCorrect,
    icDropDownArrow,
    icLogo,
    icNextArrow,
    icWrong,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsAudioGen audio = $AssetsAudioGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
