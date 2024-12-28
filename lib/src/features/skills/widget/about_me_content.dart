part of '../view/skills_screen.dart';

class _SkillsContent extends StatelessWidget {
  const _SkillsContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            FadeInRight(
              duration: const Duration(milliseconds: 1200),
              child: RichText(
                text: TextSpan(
                  text: AppString.about,
                  style: AppTextStyles.headingStyles(fontSize: 30.sp),
                  children: [
                    TextSpan(
                      text: AppString.skills,
                      style: AppTextStyles.headingStyles(
                        fontSize: 30.sp,
                        color: AppColors.robinEdgeBlue,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Constants.sizedBox(height: 20.h),
            Text(
              AppString.frameworkAndProgramming,
              style: AppTextStyles.montserratStyle(color: AppColors.white ),
            ),
            RichText(
              text: TextSpan(
                text: AppString.flutterFramework,
                style: AppTextStyles.headerTextStyle(
                  color: AppColors.lightBlue         ,
                  fontSize: 20.sp,
                ),
                children: [
                  TextSpan(
                    text: AppString.flutterFrameworkDescription,
                    style: AppTextStyles.normalStyle(
                  color: AppColors.white         ,
                
                ),
                  )
                ],
              ),
            ),
            Constants.sizedBox(height: 15.0),
          ],
        ),
      ],
    );
  }
}
