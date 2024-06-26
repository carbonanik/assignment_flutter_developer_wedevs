/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/facebook_logo.png
  AssetGenImage get facebookLogo =>
      const AssetGenImage('assets/images/facebook_logo.png');

  /// File path: assets/images/google_logo.png
  AssetGenImage get googleLogo =>
      const AssetGenImage('assets/images/google_logo.png');

  /// File path: assets/images/logo_color.png
  AssetGenImage get logoColor =>
      const AssetGenImage('assets/images/logo_color.png');

  /// File path: assets/images/placeholder1.png
  AssetGenImage get placeholder1 =>
      const AssetGenImage('assets/images/placeholder1.png');

  /// File path: assets/images/placeholder2.png
  AssetGenImage get placeholder2 =>
      const AssetGenImage('assets/images/placeholder2.png');

  /// File path: assets/images/placeholder3.png
  AssetGenImage get placeholder3 =>
      const AssetGenImage('assets/images/placeholder3.png');

  /// File path: assets/images/placeholder4.png
  AssetGenImage get placeholder4 =>
      const AssetGenImage('assets/images/placeholder4.png');

  /// File path: assets/images/profile_image_mock.png
  AssetGenImage get profileImageMock =>
      const AssetGenImage('assets/images/profile_image_mock.png');

  /// File path: assets/images/splash_logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/splash_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        facebookLogo,
        googleLogo,
        logoColor,
        placeholder1,
        placeholder2,
        placeholder3,
        placeholder4,
        profileImageMock,
        splashLogo
      ];
}

class $AssetsMockDataGen {
  const $AssetsMockDataGen();

  /// File path: assets/mock_data/products.json
  String get products => 'assets/mock_data/products.json';

  /// List of all assets
  List<String> get values => [products];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMockDataGen mockData = $AssetsMockDataGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
