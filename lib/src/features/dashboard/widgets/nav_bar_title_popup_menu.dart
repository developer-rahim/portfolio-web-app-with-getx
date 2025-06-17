part of '../view/main_dashboard.dart';

class _NavBarTitlePopupMenu extends GetView<MianDashboardViewController> {
  const _NavBarTitlePopupMenu();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
        PopupMenuButton(
          icon: Icon(
            Icons.menu_sharp,
            size: 32,
            color: AppColors.white,
          ),
          color: AppColors.bgColor2,
          position: PopupMenuPosition.under,
          constraints: BoxConstraints.tightFor(width: size.width * 0.9),
          itemBuilder: (BuildContext context) => controller.menuItems
              .asMap()
              .entries
              .map(
                (e) => PopupMenuItem(
                  textStyle: AppTextStyles.headerTextStyle(),
                  onTap: () {
                    controller.scrollTo(index: e.key);
                  },
                  child: Text(e.value),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
