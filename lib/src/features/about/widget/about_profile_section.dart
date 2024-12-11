part of '../view/about_me.dart';

class _AboutProfileSection extends StatelessWidget {
  const _AboutProfileSection();

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile2,
        height: 450,
        width: 400,
      ),
    );
  }
}
