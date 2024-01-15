import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_map/example.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
          () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (_) => Example(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/location.png',
              width: 70,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Google Location',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}