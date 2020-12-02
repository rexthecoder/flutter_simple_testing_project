import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.4;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.15,size.height*0.50);
    path_0.lineTo(size.width*0.15,size.height*0.40);
    path_0.lineTo(size.width*0.21,size.height*0.50);
    path_0.lineTo(size.width*0.28,size.height*0.40);
    path_0.lineTo(size.width*0.28,size.height*0.50);

    canvas.drawPath(path_0, paint_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
