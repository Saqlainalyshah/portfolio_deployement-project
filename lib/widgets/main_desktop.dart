import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // intro message
              const Text(
                "Hi,\nI'm Saqlain Aly Shah\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              // contact btn
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in touch",style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
          // avatar img
          Container(
            width: screenWidth*0.3,
            //height: screenHeight*0.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12,
                  Colors.black12
                ],
              ),
              image: DecorationImage(
                image: AssetImage("assets/my_profile.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
