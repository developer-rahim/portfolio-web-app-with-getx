import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/src/globals/app_assets.dart';
import 'package:portfolio_website/src/globals/app_colors.dart';
import 'package:portfolio_website/src/globals/app_text_styles.dart';
import 'package:portfolio_website/src/globals/constants.dart';
import 'package:portfolio_website/src/utils/helper_class.dart';
part '../widget/about_profile_section.dart';
part '../widget/about_me_content.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsibeLayout(
      mobile: const Column(
        children: [
          _AboutProfileSection(
            radius: 500,
            height: 200,
            widgth: 200,
          ),
          SizedBox(height: 35),
          _AboutMeContent(),
          // Constants.sizedBox(height: 35.0),
        ],
      ),
      tablet: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _AboutProfileSection(
              radius: 500,
              height: 250,
              widgth: 250,
            ),
          ),
          SizedBox(width: 25),
          //  Constants.sizedBox(width: 25.0),
          Expanded(flex: 2, child: _AboutMeContent())
        ],
      ),
      desktop: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _AboutProfileSection(),
          // Constants.sizedBox(width: 25.0),
          SizedBox(width: 25),
          Expanded(child: _AboutMeContent())
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }
}
