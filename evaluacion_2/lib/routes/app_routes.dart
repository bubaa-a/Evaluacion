import 'package:evaluacion_2/screen/screen.dart';
import 'package:flutter/material.dart';

class Approutes {
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'donate': (BuildContext context) => const DonateScreen(),
    'adopt': (BuildContext context) => const AdoptScreen(),
    'menu': (BuildContext context) => const MenuScreen(),
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen()
      );
  }
}
