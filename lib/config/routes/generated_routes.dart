import 'package:flutter/material.dart';
import 'package:flutter_with_google_maps/config/routes/app_routes_name.dart';

import '../../features/home_screen/home_screen.dart';

class AppGeneratedRoutes {
  static Route onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesName.homeScreen:
        return MaterialPageRoute(
            builder: (context) => const HomeScreen(), settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => const HomeScreen(), settings: settings);
    }
  }
}
