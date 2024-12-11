part of '../view/home_page.dart';

class _SocialButton extends GetView<HomeViewController> {
  const _SocialButton({
    required this.asset,
    required this.index,
  });

  final String asset;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.themeColor,
          width: 2.0,
        ),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Obx(
        () => Image.asset(
          asset,
          width: 10,
          height: 12,
          color: controller.socialBI.value == index
              ? AppColors.bgColor
              : AppColors.themeColor,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
}
