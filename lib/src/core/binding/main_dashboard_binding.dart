import 'package:get/get.dart';
import 'package:portfolio_website/src/features/dashboard/controller/dashboard_view_controller.dart';
import 'package:portfolio_website/src/features/home/controller/home_view_controller.dart';
import 'package:portfolio_website/src/features/portfolio/controller/portfolio_view_controller.dart';
import 'package:portfolio_website/src/features/services/controller/service_view_controller.dart';

class MainDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MianDashboardViewController());
    Get.put(HomeViewController());
    Get.put(PortfolioViewController());
    Get.put(ServiceViewController());
  }
}
