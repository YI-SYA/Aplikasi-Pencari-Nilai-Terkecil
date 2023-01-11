// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:uas_project/presentation/login/sing_in_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignInPage());
  }
}
