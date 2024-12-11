import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/globals/app_buttons.dart';
import 'package:portfolio_website/globals/app_colors.dart';
import 'package:portfolio_website/globals/app_text_styles.dart';
import 'package:portfolio_website/globals/constants.dart';
import 'package:portfolio_website/src/utils/helper_class.dart';
part '../widget/contact_info.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const _ContactInfo(),
          Constants.sizedBox(height: 40.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Full Name'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Email Address'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Mobile Number'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Email Subject'),
            ),
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              maxLines: 15,
              cursorColor: AppColors.white,
              style: AppTextStyles.normalStyle(),
              decoration: buildInputDecoration(hintText: 'Your Message'),
            ),
          ),
          Constants.sizedBox(height: 40.0),
          AppButtons.buildMaterialButton(
              buttonName: 'Send Message', onTap: () {}),
          Constants.sizedBox(height: 30.0),
        ],
      ),
      tablet: buildForm(),
      desktop: buildForm(),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const _ContactInfo(),
        Constants.sizedBox(height: 40.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Full Name'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Email Address'),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Mobile Number'),
                ),
              ),
            ),
            Constants.sizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: AppColors.white,
                  style: AppTextStyles.normalStyle(),
                  decoration: buildInputDecoration(hintText: 'Email Subject'),
                ),
              ),
            ),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          elevation: 8,
          child: TextField(
            maxLines: 15,
            cursorColor: AppColors.white,
            style: AppTextStyles.normalStyle(),
            decoration: buildInputDecoration(hintText: 'Your Message'),
          ),
        ),
        Constants.sizedBox(height: 40.0),
        AppButtons.buildMaterialButton(
            buttonName: 'Send Message', onTap: () {}),
        Constants.sizedBox(height: 30.0),
      ],
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.comfortaaStyle(),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: AppColors.bgColor2,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
    );
  }
}
