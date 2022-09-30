import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CustomModal extends StatelessWidget {
  const CustomModal({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Show bottomsheet'),
      onPressed: () {
        Get.bottomSheet(
          Container(
              height: 150,
              // color: Colors.greenAccent,
              child: Column(
                children: [
                  Text('Hii 1', textScaleFactor: 2),
                  Text('Hii 2', textScaleFactor: 2),
                  Text('Hii 3', textScaleFactor: 2),
                  Text('Hii 4', textScaleFactor: 2),
                ],
              )),
          barrierColor: Colors.red[50],
          isDismissible: false,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(width: 5, color: Colors.black)),
          enableDrag: false,
        );
      },
    );
  }
}
