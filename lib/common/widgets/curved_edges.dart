import 'package:flutter/material.dart';

class FZCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 24);
    final lastCurve = Offset(30, size.height - 24);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondFirstCurve = Offset(0, size.height - 24);
    final secondlastCuerve = Offset(size.width - 30, size.height - 24);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondlastCuerve.dx, secondlastCuerve.dy);

    final thirdFirstCurve = Offset(size.width, size.height - 24);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy,
        thirdLastCurve.dx, thirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
