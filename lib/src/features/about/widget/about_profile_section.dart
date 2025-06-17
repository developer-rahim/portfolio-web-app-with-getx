part of '../view/about_me.dart';

class _AboutProfileSection extends StatelessWidget {
  const _AboutProfileSection({
    super.key,
    this.height,
    this.widgth,
    this.radius,
  });
  final double? height;
  final double? widgth;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius??  10),
        child: Image.asset(
          AppAssets.profile2,
          height:height?? 450,
          width:widgth?? 400,   fit: BoxFit.fill,
        ),
      ),
    );
  }
}
