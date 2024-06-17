import 'package:flutter/material.dart';
import 'package:flutter_with_google_maps/config/routes/generated_routes.dart';

class FlutterGoogleMaps extends StatelessWidget {
  const FlutterGoogleMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) =>
          AppGeneratedRoutes.onGeneratedRoute(settings),
    );
  }
}
