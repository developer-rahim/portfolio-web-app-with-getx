import 'package:flutter/material.dart';

class ResponsibeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final double paddingWidth;
  final Color bgColor;
  const ResponsibeLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.paddingWidth,
    required this.bgColor,
  });
 static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 768;

 static  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        
        print(constraints.maxWidth);
        if (isMobile(context)) {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.05, horizontal: 18),
            child: mobile,
          );
        } else if (isTablet(context)) {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.1,
              horizontal: paddingWidth,
            ),
            child: tablet,
          );
        } else {
          return Container(
            // height: size.height,
            width: size.width,
            alignment: Alignment.center,
            color: bgColor,
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.15,
              horizontal: paddingWidth,
            ),
            child: desktop,
          );
        }
      },
    );
  }
}
