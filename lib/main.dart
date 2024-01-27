import 'package:basics_c10_str/basics/home_screen.dart';
import 'package:basics_c10_str/basics/slider.dart';
import 'package:basics_c10_str/calculator.dart';
import 'package:basics_c10_str/xo/login.dart';
import 'package:basics_c10_str/xo/xo_game.dart';
import 'package:flutter/material.dart';

import 'basics/counter.dart';

void main() {
  runApp(MyApp());
}

/// [1,5,2,6,9,78];
/// index
/// {"key1" : "Mohamed" , "" : "" , }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        XoGame.routeName: (context) => XoGame(),
        CalculatorScreen.routeName: (context) => CalculatorScreen(),
      },
    );
  }
}
