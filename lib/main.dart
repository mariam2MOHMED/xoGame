import 'package:flutter/material.dart';
import 'package:xo_game/xo_screen.dart';

import 'login.dart';

void main() {
  runApp(const XoGame());
}

class XoGame extends StatelessWidget {
  const XoGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        XOScreen.routeName:(_)=>XOScreen(),
        LoginScreen.routeName:(_)=>LoginScreen()
      },
      initialRoute: LoginScreen.routeName ,
    );
  }
}

