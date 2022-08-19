import 'package:flutter/material.dart';

import 'bottom_reusable_container.dart';
import 'reusable_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    SizedBox(
                      child: Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "cew-bepk-xmn",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      child: Icon(Icons.arrow_right, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Color(0xFF8B8B8C),
                        size: 25.0,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      child: Icon(
                        Icons.bluetooth_connected,
                        color: Colors.white,
                        size: 25.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ROW 1
          Row(
            children: const [
              Expanded(
                child: ReusableCard(
                  label: "You",
                  imageName: "Sunny.JPG",
                ),
              ),
              Expanded(
                child: ReusableCard(
                  label: "James",
                  imageName: null,
                  noImageCircleAvatarBackgroundColor: Colors.teal,
                ),
              ),
            ],
          ),

          // ROW 2
          Row(
            children: const [
              Expanded(
                child: ReusableCard(
                  label: "Alpha",
                  imageName: null,
                  noImageCircleAvatarBackgroundColor: Colors.purple,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  label: "Hanane",
                  imageName: "Hanane.jpg",
                ),
              ),
            ],
          ),

          // ROW 3
          Row(
            children: const [
              Expanded(
                child: ReusableCard(
                  label: "Lokman",
                  imageName: "Lokman.jpg",
                ),
              ),
              Expanded(
                child: ReusableCard(
                  label: "Redha",
                  imageName: null,
                ),
              ),
            ],
          ),

          Container(
            margin: const EdgeInsets.only(top: 10, left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BottomReusableContainer(
                  containerHeight: 50,
                  containerWidth: 50,
                  containerColor: Color(0xFFEA4335),
                  iconData: Icons.call_end,
                  iconColor: Color(0xFFFFFFFF),
                ),
                BottomReusableContainer(
                  containerHeight: 40,
                  containerWidth: 40,
                  containerColor: Color(0xFFFFFFFF),
                  iconData: Icons.videocam_off_outlined,
                  iconColor: Color(0xFF5F6368),
                ),
                BottomReusableContainer(
                  containerHeight: 40,
                  containerWidth: 40,
                  containerColor: Color(0xFFFFFFFF),
                  iconData: Icons.mic_off,
                  iconColor: Color(0xFF5F6368),
                ),
                BottomReusableContainer(
                  containerHeight: 40,
                  containerWidth: 40,
                  containerColor: Color(0xFF303134),
                  iconData: Icons.more_vert,
                  iconColor: Color(0xFFE8EAED),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
