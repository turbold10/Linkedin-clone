import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {
  final Function()? onPressedBack;
  final Function()? onPressedMore;
  const BackArrow({Key? key, this.onPressedBack, this.onPressedMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: onPressedBack,
      ),
      IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: onPressedMore,
      )
    ]);
  }
}
