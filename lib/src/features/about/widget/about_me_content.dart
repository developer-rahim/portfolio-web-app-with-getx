part of '../view/about_me.dart';

class _AboutMeContent extends StatelessWidget {
  const _AboutMeContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1200),
          child: RichText(
            text: TextSpan(
              text: 'About ',
              style: AppTextStyles.headingStyles(fontSize: 30.0),
              children: [
                TextSpan(
                  text: 'Me!',
                  style: AppTextStyles.headingStyles(
                      fontSize: 30, color: AppColors.robinEdgeBlue),
                )
              ],
            ),
          ),
        ),
        Constants.sizedBox(height: 6.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Flutter Developer!',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 8.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
            ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,'
            ' as opposed to using \'Content here, content here\', making it look like readable English.'
            ' Many desktop publishing packages and web page editors now use Lorem Ipsum as their default'
            ' model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.'
            ' Various versions have evolved over the years, sometimes by accident, sometimes on purpose'
            ' (injected humour and the like).',
            style: AppTextStyles.normalStyle(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
      ],
    );
  }
}
