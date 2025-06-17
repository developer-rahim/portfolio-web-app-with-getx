part of '../view/home_page.dart';

class _SocialButtonListBuilder extends GetView<HomeViewController> {
  const _SocialButtonListBuilder();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        itemCount: controller.socialButtons.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, child) => Constants.sizedBox(width: 8.0),
        itemBuilder: (context, index) {
          return InkWell(
            onTap:(){launchURL(index==0?fbLink:index==1?linkdinLink:gitHubLink);} ,
            onHover: (value) {
              if (value) {
                controller.socialBI.value = index;
              } else {
                controller.socialBI.value = -1;
              }
            },
            borderRadius: BorderRadius.circular(550.0),
            hoverColor: AppColors.themeColor,
            splashColor: AppColors.lawGreen,
            child: _SocialButton(
              asset: controller.socialButtons[index],
              index: index,
            ),
          );
        },
      ),
    );
  } Future<void> launchURL(String socialMedilaLinks) async {
    if (await canLaunchUrl(Uri.parse( socialMedilaLinks))) {
      await launchUrl(Uri.parse( socialMedilaLinks));
    } else {
      throw 'Could not launch $socialMedilaLinks';
    }
  }
}
