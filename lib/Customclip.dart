import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class Customclip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final wid = size.width;
    final hei = size.height;

    Path path = Path();

    path.lineTo(0, hei);
    path.quadraticBezierTo(wid * 0.5, hei - 120, wid, hei);
    path.lineTo(wid, 0);
    path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
