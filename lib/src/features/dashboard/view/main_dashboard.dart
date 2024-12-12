import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/src/globals/app_colors.dart';
import 'package:portfolio_website/src/globals/app_text_styles.dart';
import 'package:portfolio_website/src/globals/constants.dart';
import 'package:portfolio_website/src/features/dashboard/controller/dashboard_view_controller.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
part '../widgets/nav_bar_animation.dart';
part '../widgets/nav_bar_title_builder.dart';
part '../widgets/nav_bar_title_popup_menu.dart';
part '../widgets/scrollable_position_list_builder.dart';

class MainDashBoard extends StatefulWidget {
  const MainDashBoard({super.key});

  @override
  State<MainDashBoard> createState() => _MainDashBoardState();
}

class _MainDashBoardState extends State<MainDashBoard> {
  final MianDashboardViewController controller = Get.find();
  @override
  void initState() {
    super.initState();

    controller.itemPositionsListener.itemPositions.addListener(() {
      final visibleItems = controller.itemPositionsListener.itemPositions.value;

      if (visibleItems.isNotEmpty) {
        final firstVisibleItem = visibleItems.first;

        controller.menuIndex.value = firstVisibleItem.index;
      } else {
        debugPrint('No items visible');
      }
      print(controller.menuIndex.value);
    });
  }

  // @override
  // void dispose() {
  //   controller.scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 70,
        titleSpacing: 40,
        elevation: 0,
        title: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 768) {
              return const _NavBarTitlePopupMenu();
            } else {
              return const _NavBarTitleBuilder();
            }
          },
        ),
      ),
      body: const _ScrollablePositionListBuilder(),
    );
  }
}
