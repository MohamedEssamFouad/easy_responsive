import 'package:flutter/cupertino.dart';

class ResponsiveUtil {
  static const double tabletBreakpoint = 790.0;

  /// Returns a responsive dimension based on the device's screen size.
  /// - If `phoneValue` or `tabletValue` is not provided, it defaults to the other if available.
  static double? responsiveDimension({
    double? phoneValue,
    double? tabletValue,
    required BuildContext context,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    final effectiveWidth = isPortrait ? screenWidth : screenHeight;

    // Return the appropriate value based on screen width
    return effectiveWidth <= tabletBreakpoint ? phoneValue : tabletValue;
  }

  /// Returns a responsive font size based on screen size and orientation.
  /// - Prioritizes **landscape font size** when in landscape mode.
  /// - Uses **phone font sizes** for small screens and **tablet font sizes** for larger screens.
  static double? responsiveFontSize({
    double? phoneFontSize,
    double? tabletFontSize,
    double? phoneLandscapeFontSize,
    double? tabletLandscapeFontSize,
    required BuildContext context,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    final effectiveWidth = isPortrait ? screenWidth : screenHeight;

    if (!isPortrait) {
      // Landscape mode: Prioritize landscape font sizes
      if (effectiveWidth > tabletBreakpoint) {
        return tabletLandscapeFontSize ?? tabletFontSize;
      } else {
        return phoneLandscapeFontSize ?? phoneFontSize;
      }
    }

    // Portrait mode: Use standard font sizes
    return effectiveWidth <= tabletBreakpoint ? phoneFontSize : tabletFontSize;
  }
}
