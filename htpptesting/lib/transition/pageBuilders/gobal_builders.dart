import 'package:flutter/material.dart';

import '../type3.dart';

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> PageBuilder >>>>>>>>>>>>>>>>>>>>>>>>>>>> //
PageRouteBuilder type3() {
  return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondAnimation, child) {
        var begin = Offset(0.9, 0.3);
        var end = Offset.zero;
        var curve = Curves.linear;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      pageBuilder: (context, animation, secondAnimation) => Page2());
}

// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> PageBuilder Scale >>>>>>>>>>>>>>>>>>>>>>>>>
PageRouteBuilder type4() {
  return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondAnimation, child) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      pageBuilder: (context, animation, secondAnimation) => Page2());
}