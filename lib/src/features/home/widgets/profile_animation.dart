part of '../view/home_page.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({super.key});

  @override
  State<ProfileAnimation> createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0, 0.05), end: const Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: ClipRRect(borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          AppAssets.profile1,
          width: 340,
          height: 450,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
