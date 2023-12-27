import 'package:flutter/material.dart';
import 'package:flutter_application_3/auth/pages/sms_screen.dart';

import 'package:flutter_application_3/home/pages/language_screen.dart';
import 'package:flutter_application_3/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.generateRoute,
        home: Sms(),
      ),
    );
  }
}
