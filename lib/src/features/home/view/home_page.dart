import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:portfolio_website/src/core/app_constant/app_string.dart';
import 'package:portfolio_website/src/core/app_constant/contact_info.dart';

import 'package:portfolio_website/src/globals/app_assets.dart';
import 'package:portfolio_website/src/globals/app_buttons.dart';
import 'package:portfolio_website/src/globals/app_colors.dart';
import 'package:portfolio_website/src/globals/app_text_styles.dart';
import 'package:portfolio_website/src/globals/constants.dart';
import 'package:portfolio_website/src/features/home/controller/home_view_controller.dart';
import 'package:portfolio_website/src/utils/helper_class.dart';
import "package:universal_html/html.dart" as html;
import 'package:http/http.dart' as http;
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
    return ResponsibeLayout(
      mobile: Column(
        children: [
          const ProfileAnimation(
            radius: 1000,
            height: 200,
            widgth: 200,
          ),
          Constants.sizedBox(height: 25.0),
          const _HomePersonalInfo(),

          //const ProfileAnimation()
        ],
      ),
      tablet: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: _HomePersonalInfo(),
          ),
          SizedBox(width: 30),
          Flexible(
            child: ProfileAnimation(
              radius: 10000,
              height: 250,
              widgth: 250,
            ),
          ),
        ],
      ),
      desktop: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: _HomePersonalInfo()),
          SizedBox(width: 30),
          ProfileAnimation(),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }
}
