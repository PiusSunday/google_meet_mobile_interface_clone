import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final String label;
  final String? imageName;
  final Color? noImageCircleAvatarBackgroundColor;

  const ReusableCard({
    Key? key,
    required this.label,
    this.imageName,
    this.noImageCircleAvatarBackgroundColor,
  }) : super(key: key);

  // THIS CODE CHECKS IF THE IMAGE NAME IS NOT NULL AND IF IT IS, THEN IT WILL DISPLAY THE FIRST NAME OF THE LABEL TEXT
  checkCircleAvatar(String? circleAvatarImageName) {
    circleAvatarImageName = imageName;
    if (circleAvatarImageName == null) {
      return CircleAvatar(
        backgroundColor: noImageCircleAvatarBackgroundColor,
        child: Text(label[0].toUpperCase(),
            style: const TextStyle(
              fontSize: 30.0,
              color: kTextIconColor,
            )),
      );
    } else {
      return CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage("images/$circleAvatarImageName"),
      );
    }
  }

  // hasMicOfIcon(String? checking) {
  //   checking = circleAvatarImageName;
  //   if (checking == null) {
  //     return Row(
  //           mainAxisAlignment: MainAxisAlignment.end,
  //           children: [

  //           ],
  //         );
  //   } else {
  //     return Container(
  //       margin: const EdgeInsets.only(top: 8.0, right: 8.0),
  //       height: 35,
  //       width: 35,
  //       decoration: BoxDecoration(
  //         color: kMicOffIconBackgroundColor,
  //         borderRadius: BorderRadius.circular(100),
  //       ),
  //       child: const Center(
  //           child: SizedBox(
  //         child: Icon(
  //           Icons.mic_off,
  //           color: kMicOffIconColor,
  //         ),
  //       )),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // MIC OFF ICON WRAPPED IN A CONTAINER AND A ROW
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8.0, right: 8.0),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: kMicOffIconBackgroundColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Center(
                    child: SizedBox(
                  child: Icon(
                    Icons.mic_off,
                    color: kMicOffIconColor,
                  ),
                )),
              ),
            ],
          ),

          // CIRCLE AVATAR WRAPPED IN A CENTER WIDGET
          Center(
            child: checkCircleAvatar(imageName),
          ),

          // A ROW THAT CONTAINS A TEXT AND A ICON
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // NAME TEXT WRAPPED IN A PADDING WIDGET
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                child: Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTextIconColor,
                  ),
                ),
              ),

              // 3-DOT ICON WRAPPED IN A PADDING WIDGET
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: SizedBox(
                  child: Icon(
                    Icons.more_vert,
                    color: kTextIconColor,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
