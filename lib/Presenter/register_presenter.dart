import 'package:viper_authentication_app/Interactor/register_interactor.dart';
import 'package:flutter/material.dart';

import '../Router/router.dart';

class RegisterPresenter extends RegisterUser {
  Future<Widget> registerPresenter(BuildContext context) async {
    if (!(mail == null || password == null)) {
      await signUp();
      navigateToLogin(context);
    }
    return Container();
  }
}
