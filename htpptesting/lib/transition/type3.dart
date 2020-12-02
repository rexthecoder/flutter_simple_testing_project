import 'package:flutter/material.dart';

class Type3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 1"),
        ),
        body: Center(
          child: FlatButton(
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).push(type3());
              },
              child: Text("Click Here")),
        ));
  }
}

PageRouteBuilder type3() {
  return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondAnimation, child) {
        return ScaleTransition(
          scale: animation,
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
        title: Text("Type 3"),
      ),
    );
  }
}
