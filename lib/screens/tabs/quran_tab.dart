import 'package:flutter/material.dart';
import 'package:islami_app/models/suras_list_model.dart';
import 'package:islami_app/screens/sura_details.dart';
import 'package:islami_app/utils/colors_constants.dart';
import 'package:flutter/services.dart' show rootBundle;

class QuranTab extends StatefulWidget {
  const QuranTab({super.key, required this.suraName});
  final String suraName;

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
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SuraDetails(suraNumber: index + 1),
                          ),
                        );
                      },
                      child: Column(
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
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    englishQuranSurahs[index],
                                    style: TextStyle(
                                      color: Appcolors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '${ayaNumber[index]} Verses',
                                    style: TextStyle(
                                      color: Appcolors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
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
                      ),
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
