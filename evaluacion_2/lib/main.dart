import 'package:evaluacion_2/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evaluacion 2',
      debugShowCheckedModeBanner: false,
      initialRoute: Approutes.initialRoute,
      routes: Approutes.routes,
      onGenerateRoute: Approutes.onGenerateRoute,
    );
  }
}
