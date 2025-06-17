import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:portfolio_website/src/core/app_constant/app_constant.dart';
import 'package:portfolio_website/src/globals/app_assets.dart';
import 'package:portfolio_website/src/globals/app_buttons.dart';
import 'package:portfolio_website/src/globals/app_colors.dart';
import 'package:portfolio_website/src/globals/app_text_styles.dart';
import 'package:portfolio_website/src/globals/constants.dart';
import 'package:portfolio_website/src/features/home/controller/home_view_controller.dart';
import 'package:portfolio_website/src/utils/helper_class.dart';
import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';
part '../widgets/home_personal_info.dart';
part '../widgets/social_button.dart';
part '../widgets/profile_animation.dart';
part '../widgets/social_button_list_builder.dart';
part '../widgets/home_animated_text.dart';

part '../widgets/download_resum_button.dart';
class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          const _HomePersonalInfo(),
          Constants.sizedBox(height: 25.0),
          const ProfileAnimation()
        ],
      ),
      tablet: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: _HomePersonalInfo()),
          ProfileAnimation(),
        ],
      ),
      desktop: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: _HomePersonalInfo()),
          ProfileAnimation(),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }
}
