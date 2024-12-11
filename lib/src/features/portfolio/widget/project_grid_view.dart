part of '../view/my_portfolio.dart';

class _ProjectGridView extends GetView<PortfolioViewController> {
  const _ProjectGridView({
    required this.crossAxisCount,
  });
  final int crossAxisCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: controller.images.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: 280,
        mainAxisSpacing: 24,
        crossAxisSpacing: 24,
      ),
      itemBuilder: (context, index) {
        var image = controller.images[index];
        return _ProjectCard(
          index: index,
          image: image,
        );
      },
    );
  }
}
