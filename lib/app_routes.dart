import 'package:bloc_test/presentation/views/char_details_view.dart';
import 'package:bloc_test/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // Routes
  static const String homePage = '/';
  static const String charDetails = '/charDetails';

  // Routes Generator
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case charDetails:
        return MaterialPageRoute(builder: (_) => const CharDetailsView());
    }
    return null;
  }
}
