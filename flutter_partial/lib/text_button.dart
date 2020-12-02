import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                TextButton.icon(
                    label: Text("Hello Baby"),
                    style: ButtonStyle(
                        backgroundColor: MyColor(),
                        animationDuration: Duration(seconds: 1)),
                    onPressed: () {},
                    icon: Text("Hello")),
                   
              ],
            ),
          ),
        ));
  }
}

class MyColor extends MaterialStateColor {
  static const int _defaultColor = 0xcafefeed;
  static const int _pressedColor = 0xdeadbeef;

  const MyColor() : super(_defaultColor);

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return const Color(_pressedColor);
    }
    return const Color(_defaultColor);
  }
}
