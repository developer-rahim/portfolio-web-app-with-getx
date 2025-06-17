part of '../view/home_page.dart';

class _HomePersonalInfo extends GetView<HomeViewController> {
  const _HomePersonalInfo();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            AppString.helloItMe,
            style: AppTextStyles.montserratStyle(color: AppColors.white ),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
             AppString.abdulRahim,
            style: AppTextStyles.headingStyles(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        const _HomeAnimatedText(),
        Constants.sizedBox(height: 15.0),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: Text(
           AppString.homeShortDescription,
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 22.0),
        const _SocialButtonListBuilder(),
        Constants.sizedBox(height: 18.0),
        const _DownloadResumButton(),
      ],
    );
  }
}
