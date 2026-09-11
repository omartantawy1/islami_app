import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key, required this.suraNumber});

  final int suraNumber;

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  void initState() {
    super.initState();
    readAssetFile();
  }

  Future<void> readAssetFile() async {
    final String response = await rootBundle.loadString(
      'assets/files/suras/${widget.suraNumber}.txt',
    );

    verses = response
        .split('\n')
        .map((verse) => verse.trim())
        .where((verse) => verse.isNotEmpty)
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/corner.png'),

                const Expanded(
                  child: Text(
                    'elfatha',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),

                Transform.flip(
                  flipX: true,
                  child: Image.asset('assets/image/corner.png'),
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: verses.length,
                itemBuilder: (context, index) {
                  return Text(
                    verses[index],
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(fontSize: 24, height: 2),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
