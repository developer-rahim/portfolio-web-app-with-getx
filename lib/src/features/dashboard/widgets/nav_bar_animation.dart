part of '../view/main_dashboard.dart';

class _NavBarAnimation extends GetView<MianDashboardViewController> {
  const _NavBarAnimation({
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        alignment: Alignment.center,
        width: controller.menuIndex.value == index ? 80 : 75,
        duration: const Duration(milliseconds: 50),
        transform:
            controller.menuIndex.value == index ? controller.onMenuHover : null,
        child: Text(
          controller.menuItems[index],
          style: AppTextStyles.headerTextStyle(
            color: controller.menuIndex.value == index
                ? AppColors.themeColor
                : AppColors.white,
          ),
        ),
      ),
    );
  }
}
