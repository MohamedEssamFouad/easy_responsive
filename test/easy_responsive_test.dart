import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';
import 'package:easy_responsive_flutter/easy_responsive_flutter.dart';

void main() {
  /// Helper function to create a test environment with a fake screen size.
  Widget createTestWidget({required double width, required double height, required Widget child}) {
    return MediaQuery(
      data: MediaQueryData(
        size: Size(width, height),
      ),
      child: child,
    );
  }

  testWidgets('Responsive dimension returns correct values', (WidgetTester tester) async {
    double phoneValue = 100;
    double tabletValue = 200;

    await tester.pumpWidget(
      createTestWidget(
        width: 400, // Phone size
        height: 800,
        child: Builder(
          builder: (context) {
            double? result = EasyResponsiveFlutter.responsiveDimension(
              phoneValue: phoneValue,
              tabletValue: tabletValue,
              context: context,
            );
            expect(result, phoneValue);
            return Container();
          },
        ),
      ),
    );

    await tester.pumpWidget(
      createTestWidget(
        width: 1024, // Tablet size
        height: 1366,
        child: Builder(
          builder: (context) {
            double? result = EasyResponsiveFlutter.responsiveDimension(
              phoneValue: phoneValue,
              tabletValue: tabletValue,
              context: context,
            );
            expect(result, tabletValue);
            return Container();
          },
        ),
      ),
    );
  });

  testWidgets('Responsive font size returns correct values', (WidgetTester tester) async {
    double phoneFontSize = 16;
    double tabletFontSize = 24;
    double phoneLandscapeFontSize = 18;
    double tabletLandscapeFontSize = 30;

    // Test Portrait Mode for Phone
    await tester.pumpWidget(
      createTestWidget(
        width: 400,
        height: 800, // Portrait mode
        child: Builder(
          builder: (context) {
            double? result = EasyResponsiveFlutter.responsiveFontSize(
              phoneFontSize: phoneFontSize,
              tabletFontSize: tabletFontSize,
              phoneLandscapeFontSize: phoneLandscapeFontSize,
              tabletLandscapeFontSize: tabletLandscapeFontSize,
              context: context,
            );
            expect(result, phoneFontSize);
            return Container();
          },
        ),
      ),
    );

    // Test Landscape Mode for Phone
    await tester.pumpWidget(
      createTestWidget(
        width: 800,
        height: 400, // Landscape mode
        child: Builder(
          builder: (context) {
            double? result = EasyResponsiveFlutter.responsiveFontSize(
              phoneFontSize: phoneFontSize,
              tabletFontSize: tabletFontSize,
              phoneLandscapeFontSize: phoneLandscapeFontSize,
              tabletLandscapeFontSize: tabletLandscapeFontSize,
              context: context,
            );
            expect(result, phoneLandscapeFontSize);
            return Container();
          },
        ),
      ),
    );

    // Test Portrait Mode for Tablet
    await tester.pumpWidget(
      createTestWidget(
        width: 1024,
        height: 1366,
        child: Builder(
          builder: (context) {
            double? result = EasyResponsiveFlutter.responsiveFontSize(
              phoneFontSize: phoneFontSize,
              tabletFontSize: tabletFontSize,
              phoneLandscapeFontSize: phoneLandscapeFontSize,
              tabletLandscapeFontSize: tabletLandscapeFontSize,
              context: context,
            );
            expect(result, tabletFontSize);
            return Container();
          },
        ),
      ),
    );

    // Test Landscape Mode for Tablet
    await tester.pumpWidget(
      createTestWidget(
        width: 1366,
        height: 1024, // Tablet Landscape
        child: Builder(
          builder: (context) {
            double? result = EasyResponsiveFlutter.responsiveFontSize(
              phoneFontSize: phoneFontSize,
              tabletFontSize: tabletFontSize,
              phoneLandscapeFontSize: phoneLandscapeFontSize,
              tabletLandscapeFontSize: tabletLandscapeFontSize,
              context: context,
            );
            expect(result, tabletLandscapeFontSize);
            return Container();
          },
        ),
      ),
    );
  });
}
