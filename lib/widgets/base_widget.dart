import 'package:flutter/material.dart';
import 'package:islami_app/utils/colors_constants.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Container(
      height: screenHeight * 0.2,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/Islami.png'),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          colors: [Appcolors.black.withAlpha(100), Appcolors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
