import 'package:flutter/material.dart';
import '../Interactor/login_interactor.dart';
import '../Router/router.dart';

class LoginPresenter extends LoginUser {

  Future<Widget> logInPresenter(BuildContext context) async {
    if (mail != null && password != null) {
      bool register = await logIn();
      if (register) {

        navigateToHomePage(context);

      } else {
        print("Password or email is not correct");

      }
    }
    return Container();
  }

}
