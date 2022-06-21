import 'package:viper_authentication_app/Presenter/register_presenter.dart';
import 'package:viper_authentication_app/Router/router.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  RegisterPresenter presenter = RegisterPresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(

              children: [
                const SizedBox(
                  height: 35,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      'Tutorial Register Page',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),const SizedBox(
                  height: 15,
                ),

                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    )),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: presenter.mail,

                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Username"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: presenter.password,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 400,
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: ElevatedButton(
                    onPressed: () async {
                      presenter.registerPresenter(context);
                    },
                    child: const Text("Register", style: TextStyle(fontSize: 25),),
                  ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Already have an account?'),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        navigateToLogin(context);
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}


