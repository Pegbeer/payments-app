import 'package:flutter/material.dart';
import 'package:payments_app/themes/light_theme.dart';
import 'package:payments_app/screens/screens.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: LightTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {'home': (_) => const HomeScreen()},
    );
  }
}
