import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_website/src/core/app_constant/app_string.dart';
import 'package:portfolio_website/src/globals/app_colors.dart';
import 'package:portfolio_website/src/globals/app_text_styles.dart';
import 'package:portfolio_website/src/globals/constants.dart';
import 'package:portfolio_website/src/utils/helper_class.dart';
part '../widget/skills_content.dart';
part '../widget/skill_content_item.dart';
part '../widget/skill_content_header.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsibeLayout(
      mobile: const _SkillsContent(),
      tablet: const _SkillsContent(),
      desktop: const _SkillsContent(),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }
}
