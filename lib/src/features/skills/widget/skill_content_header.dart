part of '../view/skills_screen.dart';

class _SkillContentHeader extends StatelessWidget {
  const _SkillContentHeader();

  @override
  Widget build(BuildContext context) {
    return  FadeInRight(
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
        );
  }
}