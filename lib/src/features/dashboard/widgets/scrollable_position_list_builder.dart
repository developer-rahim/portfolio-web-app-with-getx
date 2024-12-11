part of '../view/main_dashboard.dart';

class _ScrollablePositionListBuilder
    extends GetView<MianDashboardViewController> {
  const _ScrollablePositionListBuilder();

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemCount: controller.screensList.length,
      itemScrollController: controller.itemScrollController,
      itemPositionsListener: controller.itemPositionsListener,
      scrollOffsetController: controller.scrollOffsetController,
      itemBuilder: (context, index) {
        return controller.screensList[index];
      },
    );
  }
}
