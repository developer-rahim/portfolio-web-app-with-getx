
part of '../view/skills_screen.dart';
class _SkillsContentCard extends StatelessWidget {
  const _SkillsContentCard({
    this.title,
    required this.description,
    required this.subtitle,
  });
  final String? title;
  final String description;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != null
              ? Text(
                  title ?? '',
                  style: AppTextStyles.montserratStyle(color: AppColors.white),
                )
              : const Offstage(),
          title != null ? Constants.sizedBox(height: 20.h) : const Offstage(),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: RichText(
              text: TextSpan(
                text: subtitle,
                style: AppTextStyles.headerTextStyle(
                  color: AppColors.lightBlue,
                  fontSize: 20.sp,
                ),
                children: [
                  TextSpan(
                    text: description,
                    style: AppTextStyles.normalStyle(
                      color: AppColors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
