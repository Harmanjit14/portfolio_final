import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget box(Size size) {
    return Container(
      height: size.height,
      width: size.width * 0.33,
      color: Colors.grey[900]!.withOpacity(0.7),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.black,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          box(size),
          box(size),
          box(size),
          
        ],
      ),
    );
  }
}
