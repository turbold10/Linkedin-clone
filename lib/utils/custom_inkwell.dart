import 'package:flutter/material.dart';

class CustomInkwell extends StatefulWidget {
  final Widget? child;
  final Function()? onTap;
  const CustomInkwell({
    super.key,
    this.child,
    this.onTap,
  });

  @override
  State<CustomInkwell> createState() => _CustomInkwellState();
}

class _CustomInkwellState extends State<CustomInkwell> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child ?? Container(),
        Positioned.fill(
            child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onTap,
          ),
        ))
      ],
    );
  }
}
