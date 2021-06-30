import 'package:flutter/material.dart';
import 'package:power_hub/screens/circuit_screens/screen1/chartTest.dart';
import 'package:power_hub/screens/home.dart';
import 'package:power_hub/authentication/login.dart';
import 'package:power_hub/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Return either home or authenicate widget
    final user = Provider.of<User>(context);

    if (user == null) {
      return Login();
    } else {
      return Home();
    }
  }
}
