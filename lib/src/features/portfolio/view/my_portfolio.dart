import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/globals/app_assets.dart';
import 'package:portfolio_website/globals/app_colors.dart';
import 'package:portfolio_website/globals/app_text_styles.dart';
import 'package:portfolio_website/globals/constants.dart';
import 'package:portfolio_website/src/features/portfolio/controller/portfolio_view_controller.dart';
import 'package:portfolio_website/src/utils/helper_class.dart';
part '../widget/project_grid_view.dart';
part '../widget/project_text.dart';
part '../widget/project_card.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ProjectText(),
          SizedBox(height: 40),
          //Constants.sizedBox(height: 40.0),
          _ProjectGridView(crossAxisCount: 1)
        ],
      ),
      tablet: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ProjectText(),
          SizedBox(height: 40),
          // Constants.sizedBox(height: 40.0),
          _ProjectGridView(crossAxisCount: 2)
        ],
      ),
      desktop: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ProjectText(),
          SizedBox(height: 40),
          // Constants.sizedBox(height: 40.0),
          _ProjectGridView(crossAxisCount: 3),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }
}
