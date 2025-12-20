import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';

import 'auth/login_page.dart';

void main() {

  runApp(const QuotelyApp());

}

class QuotelyApp extends StatelessWidget {

  const QuotelyApp({super.key});

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Quotely',

      theme: AppTheme.lightTheme,

      home: const LoginPage(),

    );

  }

}