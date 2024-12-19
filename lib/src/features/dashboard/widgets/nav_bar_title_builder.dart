part of '../view/main_dashboard.dart';

class _NavBarTitleBuilder extends GetView<MianDashboardViewController> {
  const _NavBarTitleBuilder();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text(
          'Flutter Dev Portfolio',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 30,
          child: ListView.separated(
            controller: controller.scrollController,
            itemCount: controller.menuItems.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, child) => Constants.sizedBox(width: 8),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  controller.scrollTo(index: index);
                },
                borderRadius: BorderRadius.circular(100),
                onHover: (value) {
                  if (value) {
                    controller.menuIndex.value = index;
                  } else {
                    controller.menuIndex.value = 0;
                  }
                },
                child: _NavBarAnimation(
                  index: index,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
