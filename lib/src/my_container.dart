import 'package:flutter/widgets.dart';

class MyContainer extends StatefulWidget {
  final double width;
  final double height;
  final String label;
  final Color color;
  const MyContainer({
    super.key,
    required this.width,
    required this.height,
    required this.label,
    required this.color
  });

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: widget.color,
      child: Center(
        child: Text(widget.label),
      ),
    );
  }
}