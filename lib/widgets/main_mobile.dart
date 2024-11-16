import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      color: CustomColor.lightRed,
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560,),
      child: Column(
        children: [
          Image.asset(
            "assets/logo.png", width: screenWidth,),

          const Text(
            "Hello,\nWelcome to Best Chef\nOrder anything you want!",
            style: TextStyle(
                fontSize: 24,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ],
      ),
    );
  }
}
