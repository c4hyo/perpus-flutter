import 'package:flutter/material.dart';
class NotFoundScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(),
          Text("Screen not found"),
        ],
      ),
    );
  }
}
