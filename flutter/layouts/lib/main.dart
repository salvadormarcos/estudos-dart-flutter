import 'package:flutter/material.dart';
import 'package:layouts/pages/login.page.dart';

void main() {
  runApp(DogLifeApp());
}

class DogLifeApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: LoginPage(),
    );
  }

}
