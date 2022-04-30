import 'package:flutter/material.dart';
import 'package:flutter_web_admin/helpers/responsiveness.dart';
import 'package:flutter_web_admin/widgets/large_screen.dart';
import 'package:flutter_web_admin/widgets/small_screen.dart';
import 'package:flutter_web_admin/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavBar(context, scaffoldKey),
        drawer: const Drawer(),
        body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
