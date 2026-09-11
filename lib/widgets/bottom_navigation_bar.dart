import 'package:flutter/material.dart';
import 'package:islami_app/utils/colors_constants.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  }) : assert(currentIndex >= 0 && currentIndex < 5);

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Appcolors.gold,
      selectedItemColor: Appcolors.white,
      unselectedItemColor: Appcolors.black,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        _buildItem(0, 'ic_quran.png', 'Quran'),
        _buildItem(1, 'ic_hadeth.png', 'Hadeth'),
        _buildItem(2, 'ic_sebha.png', 'Sebha'),
        _buildItem(3, 'ic_radio.png', 'Radio'),
        _buildItem(4, 'ic_time.png', 'Time'),
      ],
    );
  }

  BottomNavigationBarItem _buildItem(int index, String image, String label) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: currentIndex == index
              ? Appcolors.black.withAlpha(70)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Image.asset(
          'assets/images/$image',
          width: 24,
          height: 24,
          color: currentIndex == index ? Appcolors.white : Appcolors.black,
          errorBuilder: (context, error, stackTrace) => Icon(
            const [
              Icons.menu_book,
              Icons.library_books,
              Icons.circle_outlined,
              Icons.radio,
              Icons.access_time,
            ][index],
          ),
        ),
      ),
      label: label,
    );
  }
}
