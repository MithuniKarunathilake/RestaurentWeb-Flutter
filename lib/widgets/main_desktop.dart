import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      color: CustomColor.lightRed,
      height: screenSize.height/1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello,\nWelcome to Best Chef\nOrder anything you want!",
                style: TextStyle(
                    fontSize: 20,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/logo.png",
            width: screenWidth/3,
          ),
        ],
      ),
    );
  }
}
