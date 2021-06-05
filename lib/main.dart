import 'package:flutter/material.dart';
import 'package:power_hub/auth.dart';
import 'package:power_hub/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthService().user,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Power Hub',
          theme: ThemeData(
            primarySwatch: Colors.amber,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: Splash()),
    );
  }
}
