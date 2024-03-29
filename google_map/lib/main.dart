import 'package:flutter/material.dart';
import 'package:google_map/example.dart';
import 'package:google_map/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'learning-approach',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      routes: {
        '/splash': (context) => Splash(),
        '/login': (context) => Example(),
      },
      initialRoute: '/splash',
    );
  }
}