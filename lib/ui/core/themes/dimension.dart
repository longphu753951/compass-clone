import 'package:flutter/material.dart';

abstract final class Dimension {
  const Dimension();

  /// General horizontal padding used to separate UI items
  static const paddingHorizontal = 20.0;

  /// General vertical padding used to separate UI items
  static const paddingVertical = 24.0;

  /// Horizontal padding for screen edges
  double get paddingScreenHorizontal;

  /// Vertical padding for screen edges
  double get paddingScreenVertical;

  double get profilePictureSize;

  /// Horizontal symmetric padding for screen edges
  EdgeInsets get edgeInsetsScreenHorizontal => EdgeInsets.symmetric(horizontal: paddingHorizontal);
  EdgeInsets get edgeInsetsScreenSymmetric => EdgeInsets.symmetric(
    horizontal: paddingScreenHorizontal,
    vertical: paddingScreenVertical,
  );

  static const Dimension desktop = _DesktopDimension();
  static const Dimension mobile = _MobileDimension();

  /// Get dimensions definition based on screen size
  factory Dimension.of(BuildContext context) =>
      switch (MediaQuery.sizeOf(context).width) {
        > 600 && < 840 => desktop,
        _ => mobile,
      };
}

final class _DesktopDimension extends Dimension {

  @override
  final double paddingScreenHorizontal = Dimension.paddingHorizontal;

  @override
  final double paddingScreenVertical = Dimension.paddingVertical;

  @override
  final double profilePictureSize = 64.0;

  const _DesktopDimension();
}

final class _MobileDimension extends Dimension {

  @override
  final double paddingScreenHorizontal = 100.0;

  @override
  final double paddingScreenVertical = 64.0;

  @override
  final double profilePictureSize = 128.0;

  const _MobileDimension();
}