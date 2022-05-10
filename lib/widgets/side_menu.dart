import 'package:flutter/material.dart';
import 'package:flutter_web_admin/constatns/controllers.dart';
import 'package:flutter_web_admin/constatns/style.dart';
import 'package:flutter_web_admin/controllers/navigationController.dart';
import 'package:flutter_web_admin/helpers/custom_text.dart';
import 'package:flutter_web_admin/helpers/responsiveness.dart';
import 'package:flutter_web_admin/routes/routes.dart';
import 'package:flutter_web_admin/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = Get.size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                    itemName: itemName == AuthenticationPageRoute
                        ? "LogOut"
                        : itemName,
                    onTap: () {
                      if (itemName == AuthenticationPageRoute) {
                        // Get.offAllNamed(authenticationPageRoute);
                        // menuController.changeActiveItemTo(overviewPageDisplayName);
                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) Get.back();
                        NavigationController().navigateTo(itemName.route);
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
