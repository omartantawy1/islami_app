import 'package:flutter/material.dart';
import 'package:islami_app/models/onboarding_data_model.dart';
import 'package:islami_app/utils/colors_constants.dart';
import 'package:islami_app/widgets/base_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int currentindex = 0;
  bool islast = false;
  bool isfirst = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Appcolors.black,
      body: SafeArea(
        child: Column(
          children: [
            BaseWidget(),
            Container(
              height: screenHeight * 0.7,
              child: PageView.builder(
                controller: pageController,
                itemCount: onboardingdata.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(onboardingdata[index].imagepath),
                      SizedBox(height: 30),
                      Text(
                        onboardingdata[index].title,
                        style: TextStyle(color: Appcolors.gold, fontSize: 24),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          onboardingdata[index].description,
                          style: TextStyle(color: Appcolors.gold, fontSize: 24),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (currentindex > 0) {
                          currentindex--;
                        }
                      });
                      pageController.animateToPage(
                        currentindex,
                        duration: Duration(microseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: currentindex == 0
                        ? SizedBox()
                        : Text('back', style: TextStyle(color: Appcolors.gold)),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      if (currentindex == onboardingdata.length - 1) {
                        Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        currentindex++;

                        pageController.animateToPage(
                          currentindex,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );

                        setState(() {});
                      }
                    },
                    child: Text(
                      currentindex == onboardingdata.length - 1
                          ? 'finish'
                          : 'next',
                      style: TextStyle(color: Appcolors.gold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
