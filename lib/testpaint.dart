// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

class Testpanint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey.shade600
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke;

    var hourhand = Paint()
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;

    var min = Paint()
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;
    var sec = Paint()
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    final Center = Offset(size.width / 2, size.height / 2);
    final rect = Rect.fromCenter(center: Center, width: 20, height: 20);
    final rect2 = Rect.fromCenter(
        center: Offset(Center.dx, Center.dy + 90), width: 350, height: 120);

    canvas.drawCircle(Offset(Center.dx - 100, Center.dy), 40, paint);
    canvas.drawCircle(Offset(Center.dx - 50, Center.dy), 40, paint);
    canvas.drawCircle(Center, 40, paint);
    canvas.drawCircle(Offset(Center.dx + 50, Center.dy), 40, paint);
    canvas.drawCircle(Offset(Center.dx + 100, Center.dy), 40, paint);

    canvas.drawArc(rect, 0, pi, false, paint);
    // canvas.drawArc(rect2, 0, pi, false, paint);

    final path = Path();
    path.moveTo(Center.dx + 170, Center.dy - 100);
    // path.lineTo(Center.dx + 170, Center.dy - 100);
    path.quadraticBezierTo(
        Center.dx, Center.dy - 220, Center.dx - 170, Center.dy - 100);
    path.quadraticBezierTo(
        Center.dx - 290, Center.dy, Center.dx - 170, Center.dy + 100);
// // path.moveTo(Center.dx - 170, Center.dy + 100);
    path.quadraticBezierTo(
        Center.dx, Center.dy + 220, Center.dx + 170, Center.dy + 100);
    path.quadraticBezierTo(
        Center.dx + 290, Center.dy, Center.dx + 170, Center.dy - 100);
    path.moveTo(Center.dx - 200, Center.dy + 250);
    // path.lineTo(Center.dx + 200, Center.dy + 250);
    path.cubicTo(Center.dx - 150, Center.dy + 180, Center.dx + 150,
        Center.dy + 330, Center.dx + 200, Center.dy + 250);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
