import 'package:material_ui/material_ui.dart';

class WireframeImagePlaceholder extends StatelessWidget {
  const WireframeImagePlaceholder({super.key, this.height = 250});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.08),
        border: Border.all(color: Colors.grey.shade400, width: 1.5),
      ),
      child: CustomPaint(
        size: Size.infinite,
        painter: XPainter(),
      ),
    );
  }
}

class XPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    canvas.drawLine(Offset.zero, Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
