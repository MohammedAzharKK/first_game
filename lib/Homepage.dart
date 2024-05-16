import 'package:apk/Customclip.dart';
import 'package:apk/testpaint.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: Customclip(),
        child: Container(
          height: 400,
          width: double.infinity,
          color: Colors.cyan,
          child: CustomPaint(
            size: Size(
                500,
                (500 * 0.5833333333333334)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1666667, size.height * 0.2157143);
    path_0.quadraticBezierTo(size.width * 0.0252083, size.height * 0.2364286,
        size.width * 0.0425000, size.height * 0.4242857);
    path_0.quadraticBezierTo(size.width * 0.1341667, size.height * 0.6896429,
        size.width * 0.2091667, size.height * 0.4285714);
    path_0.quadraticBezierTo(size.width * 0.1935417, size.height * 0.1121429,
        size.width * 0.2941667, size.height * 0.2357143);
    path_0.quadraticBezierTo(size.width * 0.4664583, size.height * 0.0439286,
        size.width * 0.3441667, size.height * 0.4185714);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
