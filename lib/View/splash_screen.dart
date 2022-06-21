import 'package:viper_authentication_app/Router/router.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1557683316-973673baf926?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&w=1000&q=80'),
                  fit: BoxFit.fill),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 175, 60, 0),
                  child: Column(
                    children: [
                      Text('Welcome...', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),

                    ],
                  ),
                ),),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                color: Colors.teal,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        child: Text('Login Page', style: TextStyle(fontSize: 22),),
                        onPressed: (
                            ) {
                          navigateToLogin(context);
                        },
                      ),
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 25, left: 24, right: 24),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                color: Colors.teal,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        child: Text('Register Page', style: TextStyle(fontSize: 22),),
                        onPressed: () {
                          navigateToRegister(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
