import 'package:flutter/material.dart';

Widget solidCircle(Color color, double size) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}

Widget hollowCircle(Color color, double size) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color),
      ),
      Container(
        width: size - 10,
        height: size - 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey[900]),
      ),
    ],
  );
}
