import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:portfolio_website/src/features/about/view/about_me.dart';
import 'package:portfolio_website/src/features/contact_us/view/contact_us.dart';
import 'package:portfolio_website/views/footer_class.dart';
import 'package:portfolio_website/src/features/home/view/home_page.dart';
import 'package:portfolio_website/src/features/portfolio/view/my_portfolio.dart';
import 'package:portfolio_website/views/my_services.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MianDashboardViewController extends GetxController {
  final ItemScrollController itemScrollController = ItemScrollController();

  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();

  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  late ScrollController scrollController = ScrollController();
  final onMenuHover = Matrix4.identity()..scale(1.0);
  RxInt menuIndex = 0.obs;
  // RxInt currentIndex = 0.obs;

  final menuItems = <String>[
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Contact',
  ];
  final screensList = const <Widget>[
    HomePage(),
    AboutMe(),
    MyServices(),
    MyPortfolio(),
    ContactUs(),
    FooterClass(),
  ];

  Future scrollTo({required int index}) async {
    itemScrollController
        .scrollTo(
            index: index,
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {
      menuIndex.value = index;
    });
  }
}
