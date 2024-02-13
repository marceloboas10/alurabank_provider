import 'package:flutter/material.dart';

class BallColor extends StatelessWidget {
  const BallColor({super.key, required this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
