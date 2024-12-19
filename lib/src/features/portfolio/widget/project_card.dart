part of '../view/my_portfolio.dart';

class _ProjectCard extends GetView<PortfolioViewController> {
  const _ProjectCard({
    required this.index,
    required this.image,
  });
  final int index;
  final String image;
  @override
  Widget build(BuildContext context) {
    return FadeInUpBig(
      duration: const Duration(milliseconds: 1600),
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          if (value) {
            controller.hoveredIndex.value = index;
          } else {
            controller.hoveredIndex.value = -1;
          }
        },
        child: Obx(
          () => Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                ),
              ),
              Visibility(
                visible: index == controller.hoveredIndex.value,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  transform: index == controller.hoveredIndex.value
                      ? controller.onH0verEffect
                      : null,
                  curve: Curves.easeIn,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      AppColors.themeColor.withOpacity(1.0),
                      AppColors.themeColor.withOpacity(0.9),
                      AppColors.themeColor.withOpacity(0.8),
                      AppColors.themeColor.withOpacity(0.6),
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'App Development',
                        style: AppTextStyles.montserratStyle(
                            color: Colors.black87, fontSize: 20),
                      ),
                      Constants.sizedBox(height: 15.0),
                      Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                        style: AppTextStyles.normalStyle(color: Colors.black87),
                        textAlign: TextAlign.center,
                      ),
                      Constants.sizedBox(height: 30.0),
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          AppAssets.share,
                          width: 25,
                          height: 25,
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
