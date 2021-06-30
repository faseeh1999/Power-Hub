import 'package:flutter/material.dart';
import 'package:power_hub/chartTest.dart';
import 'package:power_hub/home.dart';
import 'package:power_hub/login.dart';
import 'package:power_hub/user.dart';
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
