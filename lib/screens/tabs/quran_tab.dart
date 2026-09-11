import 'package:flutter/material.dart';
import 'package:islami_app/models/suras_list_model.dart';
import 'package:islami_app/utils/colors_constants.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 500,
                child: ListView.builder(
                  itemCount: ayaNumber.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/Vector.png',
                                  width: 80,
                                  height: 80,
                                ),
                                Text(
                                  '${index + 1}',
                                  style: TextStyle(
                                    color: Appcolors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 30),
                            Text(
                              englishQuranSurahs[index],
                              style: TextStyle(
                                fontSize: 20,
                                color: Appcolors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              arabicQuranSuras[index],
                              style: TextStyle(
                                fontSize: 20,
                                color: Appcolors.white,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 20,
                          thickness: 1,
                          indent: 20,
                          endIndent: 0,
                          color: Appcolors.white,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
