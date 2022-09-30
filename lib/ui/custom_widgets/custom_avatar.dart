import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final double? size;
  final Image? image;
  final String? letter;
  final IconData? icon;
  final Color? background;
  const CustomAvatar(
      {Key? key,
      this.size,
      this.image,
      this.letter,
      this.icon,
      this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: background,
      child: SizedBox(
        width: size,
        height: size,
        child: ClipOval(child: image),
      ),
    );
    // return Container(
    //     width: size,
    //     height: size,
    //     alignment: Alignment.topLeft,
    //     // color: background,

    //     child: Circle(
    //       decoration: BoxDecoration(shape: BoxShape.circle, color: background),
    //     ));
  }
}
