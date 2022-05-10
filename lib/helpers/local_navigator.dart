import 'package:flutter/widgets.dart';
import 'package:flutter_web_admin/controllers/navigationController.dart';
import 'package:flutter_web_admin/routes/router.dart';
import 'package:flutter_web_admin/routes/routes.dart';

Navigator localNavigator() => Navigator(
      key: NavigationController().navigatorKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
