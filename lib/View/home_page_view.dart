import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
        body: Center(
            child: Container(
              padding: EdgeInsets.all(50),
              child:
                  Text("Successfully Logged-In", style: TextStyle(fontSize: 50),),




            )),
    );
  }
}
