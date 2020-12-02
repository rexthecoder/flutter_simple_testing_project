import 'package:flutter/material.dart';


class DownToTop1 extends StatelessWidget {
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
           Navigator.of(context).push(type2());
            },
            child: Text("Click Here")),
      ));
  }
}

PageRouteBuilder type2(){
  return PageRouteBuilder(
    transitionsBuilder: (context, animation, secondAnimation, child){
      var begin = Offset(0.8, 0.8);
      var end = Offset.zero;
      var curve = Curves.linear;
      var tween = Tween(end:end, begin:begin).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child,);
    },
    pageBuilder: (context, animation, secondAnimation) => DownToTop2());
}

class DownToTop2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" DownToTop2"),
      ),
    );
  }
}