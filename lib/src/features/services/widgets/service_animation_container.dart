part of '../view/my_services.dart';

class _ServiceAnimationContainer extends GetView<ServiceViewController> {
  const _ServiceAnimationContainer({
    required this.title,
    required this.asset,
    required this.hover,
    this.width,
    this.hoverWidth,
  });

  final String title;
  final String asset;
  final RxBool hover;
  final double? width;
  final double? hoverWidth;
  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: hover.value ? hoverWidth : width,
          height: hover.value ? 390 : 380,
          alignment: Alignment.center,
          transform:
              hover.value ? controller.onHoverActive : controller.onHoverRemove,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
          decoration: BoxDecoration(
            color: AppColors.bgColor2,
            borderRadius: BorderRadius.circular(30),
            border: hover.value
                ? Border.all(color: AppColors.themeColor, width: 3)
                : null,
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                spreadRadius: 4.0,
                blurRadius: 4.5,
                offset: Offset(3.0, 4.5),
              )
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                asset,
                width: 50,
                height: 50,
                color: AppColors.themeColor,
              ),
              Constants.sizedBox(height: 30.0),
              Text(
                title,
                style: AppTextStyles.montserratStyle(
                    color: Colors.white, fontSize: 22.0),
              ),
              Constants.sizedBox(height: 12.0),
              Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
                ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                style: AppTextStyles.normalStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
              Constants.sizedBox(height: 20.0),
              AppButtons.buildMaterialButton(
                  buttonName: 'Read More', onTap: () {})
            ],
          ),
        ));
  }
}
