import 'package:flutter/material.dart';
import 'package:islami_app/utils/colors_constants.dart';
import 'package:islami_app/widgets/base_widget.dart';
import 'package:islami_app/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.black,
      body: SafeArea(child: Column(children: [BaseWidget()])),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() => selectedIndex = index);
        },
      ),
    );
  }
}
