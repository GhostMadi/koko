

import 'package:flutter/cupertino.dart';

import 'package:flutter_application_3/auth/pages/register_screen.dart';
import 'package:flutter_application_3/auth/pages/sms_screen.dart';
import 'package:flutter_application_3/home/pages/language_screen.dart';
import 'package:flutter_application_3/routes/routing_const.dart';

class AppRouter {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Register:
        return CupertinoPageRoute(builder: (context) => const RegisterScreen());
      case smsPage:
        return CupertinoPageRoute(builder: (context) => const Sms());
      default:
        return CupertinoPageRoute(builder: (context) => const LanguageChoose());
    }
  }
}
