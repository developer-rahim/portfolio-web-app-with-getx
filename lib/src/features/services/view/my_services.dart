import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/src/globals/app_assets.dart';
import 'package:portfolio_website/src/globals/app_buttons.dart';
import 'package:portfolio_website/src/globals/app_colors.dart';
import 'package:portfolio_website/src/globals/app_text_styles.dart';
import 'package:portfolio_website/src/globals/constants.dart';
import 'package:portfolio_website/src/features/services/controller/service_view_controller.dart';
import 'package:portfolio_website/src/utils/helper_class.dart';
part '../widgets/service_text.dart';
part '../widgets/service_animation_container.dart';

class MyServices extends GetView<ServiceViewController> {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsibeLayout(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          const _ServiceText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              controller.isApp.value = value;
            },
            child: _ServiceAnimationContainer(
              title: 'App Development',
              asset: AppAssets.code,
              hover: controller.isApp,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              controller.isGraphic.value = value;
            },
            child: _ServiceAnimationContainer(
              title: 'Graphic Designing',
              asset: AppAssets.brush,
              hover: controller.isGraphic,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              controller.isDataAnalyst.value = value;
            },
            child: _ServiceAnimationContainer(
              title: 'Digital Marketing',
              asset: AppAssets.analyst,
              hover: controller.isDataAnalyst,
            ),
          )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _ServiceText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              controller.isApp.value = value;
            },
            child: _ServiceAnimationContainer(
              title: 'App Development',
              asset: AppAssets.code,
              hover: controller.isApp,
            ),
          ),
        Constants.sizedBox(height: 26.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              controller.isGraphic.value = value;
            },
            child: _ServiceAnimationContainer(
              title: 'Graphic Designing',
              asset: AppAssets.brush,
              hover: controller.isGraphic,
            ),
          ),
          Constants.sizedBox(height: 26.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              controller.isDataAnalyst.value = value;
            },
            child: _ServiceAnimationContainer(
              title: 'Digital Marketing',
              asset: AppAssets.analyst,
              hover: controller.isDataAnalyst,
              width: 725.0,
              hoverWidth: 735.0,
            ),
          )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _ServiceText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    controller.isApp.value = value;
                  },
                  child: _ServiceAnimationContainer(
                    title: 'App Development',
                    asset: AppAssets.code,
                    hover: controller.isApp,
                  ),
                ),
              ),
              Constants.sizedBox(width: 24.0),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    controller.isGraphic.value = value;
                  },
                  child: _ServiceAnimationContainer(
                    title: 'Graphic Designing',
                    asset: AppAssets.brush,
                    hover: controller.isGraphic,
                  ),
                ),
              ),
              Constants.sizedBox(width: 24.0),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  onHover: (value) {
                    controller.isDataAnalyst.value = value;
                  },
                  child: _ServiceAnimationContainer(
                    title: 'Digital Marketing',
                    asset: AppAssets.analyst,
                    hover: controller.isDataAnalyst,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor,
    );
  }
}
