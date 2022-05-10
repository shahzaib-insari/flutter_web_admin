import 'package:flutter/material.dart';
import 'package:flutter_web_admin/pages/clients/clients.dart';
import 'package:flutter_web_admin/pages/drivers/drivers.dart';
import 'package:flutter_web_admin/pages/overview/overview.dart';
import 'package:flutter_web_admin/routes/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(const OverviewPage());
    case DriversPageRoute:
      return _getPageRoute(const DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
