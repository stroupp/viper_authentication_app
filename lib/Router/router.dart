import 'package:viper_authentication_app/View/home_page_view.dart';
import 'package:viper_authentication_app/View/login_page.dart';
import 'package:flutter/material.dart';

import '../View/register_page.dart';

Future navigateToHomePage(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const HomePage(),
    ),
  );
}

Future navigateToLogin(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => LoginPage(),
    ),
  );
}

Future navigateToRegister(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => RegisterPage(),
    ),
  );
}
