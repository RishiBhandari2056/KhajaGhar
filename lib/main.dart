// import 'package:assigndeliveryboy/Screens/deliveryboy_screen.dart';
import 'package:assigndeliveryboy/Screens/entercode_screen.dart';
import 'package:assigndeliveryboy/Screens/forgotpassword_screen.dart';
// import 'package:assigndeliveryboy/Screens/forgotpassword_screen.dart';
import 'package:flutter/material.dart';

// import 'Screens/deliveryboy_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      home: ForgotPassword(),
    );
  }
}
