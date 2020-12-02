import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstScreen"),
      ),
      body: Center(
        child: FlatButton(
            color: Colors.red,
            onPressed: () {
              Navigator.of(context).push(downToTopTransition());
            },
            child: Text("Click Here")),
      ),
    );
  }
}

PageRouteBuilder downToTopTransition() {
  return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondANimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
            Tween(end: end, begin: begin).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      pageBuilder: (context, animation, secondAnimation) => Page2());
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
    );
  }
}
