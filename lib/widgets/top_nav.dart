import 'package:flutter/material.dart';
import 'package:flutter_web_admin/constatns/style.dart';
import 'package:flutter_web_admin/helpers/custom_text.dart';
import 'package:flutter_web_admin/helpers/responsiveness.dart';

AppBar topNavBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    iconTheme: IconThemeData(color: dark),
    backgroundColor: Colors.transparent,
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Image.asset(
                  "assets/icons/logo.png",
                  width: 28,
                ),
              )
            ],
          )
        : IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              key.currentState!.openDrawer();
            },
          ),
    title: Row(
      children: [
        Visibility(
            child: CustomText(
          text: "Dashboard",
          color: lightGrey,
          size: 20,
          weight: FontWeight.bold,
        )),
        Expanded(
          child: Container(),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            //color: dark.withOpacity(0.7),
          ),
        ),
        Stack(
          children: [
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
                onPressed: () {}),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: light, width: 2)),
              ),
            )
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),
        const SizedBox(
          width: 24,
        ),
        CustomText(
          text: "Santos Enoque",
          color: lightGrey,
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
              color: active.withOpacity(.5),
              borderRadius: BorderRadius.circular(30)),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: light,
              child: Icon(
                Icons.person_outline,
                color: dark,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
