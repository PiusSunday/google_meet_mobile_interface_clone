import 'package:flutter/material.dart';

class BottomReusableContainer extends StatelessWidget {
  final int containerHeight;
  final int containerWidth;

  final Color containerColor;
  final IconData iconData;

  final Color iconColor;

  const BottomReusableContainer({
    Key? key,
    required this.containerHeight,
    required this.containerWidth,
    required this.containerColor,
    required this.iconData,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, right: 8.0),
      height: containerHeight.toDouble(),
      width: containerWidth.toDouble(),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
          child: SizedBox(
        child: Icon(
          iconData,
          color: iconColor,
        ),
      )),
    );
  }
}
