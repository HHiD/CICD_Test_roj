import 'package:flutter/material.dart';
import 'package:flutter_learning/view/welcom.dart';

class Routes {
  static Map<String, WidgetBuilder> generateRoutemap(dynamic arguments) {
    final Map<String, WidgetBuilder> routeMap = {
      '/': ((context) => const WelcomPage()),
    };
    return routeMap;
  }

  MaterialPageRoute<dynamic>? Function(RouteSettings) onGenerateRoutes =
      (settings) {
    if (settings.name == null) {
      return null;
    }

    bool fullscreenDialog = false;
    Widget Function(BuildContext)? builder;
    dynamic arguments = settings.arguments;

    builder = generateRoutemap(arguments)[settings.name];
    if (builder != null) {
      return MaterialPageRoute(
          settings: RouteSettings(name: settings.name, arguments: arguments),
          fullscreenDialog: fullscreenDialog,
          builder: (context) {
            return builder!(context);
          });
    }

    return null;
  };
}
