import 'package:flutter/material.dart';
import 'package:pdf/colores.dart';
import 'package:pdf/home.dart';
import 'package:pdf/home_scren.dart';
import 'package:pdf/localnotificacion.dart';
import 'package:pdf/localnotificacion.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: Color(0xFF0C9869),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
