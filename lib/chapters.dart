import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Chapters extends StatefulWidget {
  const Chapters({Key? key}) : super(key: key);

  @override
  State<Chapters> createState() => _ChaptersState();
}

class _ChaptersState extends State<Chapters> {
  bool isLoading = false;
  String name1 = " ";
  String name2 = " ";
  String name3 = " ";
  String name4 = " ";
  String name5 = " ";
  String name6 = " ";
  String name7 = " ";
  String name8 = " ";
  String name9 = " ";
  String name10 = " ";
  String name11 = " ";
  String name12 = " ";
  String name13 = " ";
  String name14 = " ";
  String name15 = " ";
  String name16 = " ";
  String name17 = " ";
  String name18 = " ";

  String translation1 = " ";
  String translation2 = " ";
  String translation3 = " ";
  String translation4 = " ";
  String translation5 = " ";
  String translation6 = " ";
  String translation7 = " ";
  String translation8 = " ";
  String translation9 = " ";
  String translation10 = " ";
  String translation11 = " ";
  String translation12 = " ";
  String translation13 = " ";
  String translation14 = " ";
  String translation15 = " ";
  String translation16 = " ";
  String translation17 = " ";
  String translation18 = " ";

  String chapter1 = " ";
  String chapter2 = " ";
  String chapter3 = " ";
  String chapter4 = " ";
  String chapter5 = " ";
  String chapter6 = " ";
  String chapter7 = " ";
  String chapter8 = " ";
  String chapter9 = " ";
  String chapter10 = " ";
  String chapter11 = " ";
  String chapter12 = " ";
  String chapter13 = " ";
  String chapter14 = " ";
  String chapter15 = " ";
  String chapter16 = " ";
  String chapter17 = " ";
  String chapter18 = " ";

  String verseCount1 = " ";
  String verseCount2 = " ";
  String verseCount3 = " ";
  String verseCount4 = " ";
  String verseCount5 = " ";
  String verseCount6 = " ";
  String verseCount7 = " ";
  String verseCount8 = " ";
  String verseCount9 = " ";
  String verseCount10 = " ";
  String verseCount11 = " ";
  String verseCount12 = " ";
  String verseCount13 = " ";
  String verseCount14 = " ";
  String verseCount15 = " ";
  String verseCount16 = " ";
  String verseCount17 = " ";
  String verseCount18 = " ";

  String meaningHindi1 = " ";
  String meaningHindi2 = " ";
  String meaningHindi3 = " ";
  String meaningHindi4 = " ";
  String meaningHindi5 = " ";
  String meaningHindi6 = " ";
  String meaningHindi7 = " ";
  String meaningHindi8 = " ";
  String meaningHindi9 = " ";
  String meaningHindi10 = " ";
  String meaningHindi11 = " ";
  String meaningHindi12 = " ";
  String meaningHindi13 = " ";
  String meaningHindi14 = " ";
  String meaningHindi15 = " ";
  String meaningHindi16 = " ";
  String meaningHindi17 = " ";
  String meaningHindi18 = " ";

  String meaningEnglish1 = " ";
  String meaningEnglish2 = " ";
  String meaningEnglish3 = " ";
  String meaningEnglish4 = " ";
  String meaningEnglish5 = " ";
  String meaningEnglish6 = " ";
  String meaningEnglish7 = " ";
  String meaningEnglish8 = " ";
  String meaningEnglish9 = " ";
  String meaningEnglish10 = " ";
  String meaningEnglish11 = " ";
  String meaningEnglish12 = " ";
  String meaningEnglish13 = " ";
  String meaningEnglish14 = " ";
  String meaningEnglish15 = " ";
  String meaningEnglish16 = " ";
  String meaningEnglish17 = " ";
  String meaningEnglish18 = " ";

  String summaryEnglish1 = " ";
  String summaryEnglish2 = " ";
  String summaryEnglish3 = " ";
  String summaryEnglish4 = " ";
  String summaryEnglish5 = " ";
  String summaryEnglish6 = " ";
  String summaryEnglish7 = " ";
  String summaryEnglish8 = " ";
  String summaryEnglish9 = " ";
  String summaryEnglish10 = " ";
  String summaryEnglish11 = " ";
  String summaryEnglish12 = " ";
  String summaryEnglish13 = " ";
  String summaryEnglish14 = " ";
  String summaryEnglish15 = " ";
  String summaryEnglish16 = " ";
  String summaryEnglish17 = " ";
  String summaryEnglish18 = " ";

  String summaryHindi1 = " ";
  String summaryHindi2 = " ";
  String summaryHindi3 = " ";
  String summaryHindi4 = " ";
  String summaryHindi5 = " ";
  String summaryHindi6 = " ";
  String summaryHindi7 = " ";
  String summaryHindi8 = " ";
  String summaryHindi9 = " ";
  String summaryHindi10 = " ";
  String summaryHindi11 = " ";
  String summaryHindi12 = " ";
  String summaryHindi13 = " ";
  String summaryHindi14 = " ";
  String summaryHindi15 = " ";
  String summaryHindi16 = " ";
  String summaryHindi17 = " ";
  String summaryHindi18 = " ";
  String summaryHindi19 = " ";
  var responseData;
  @override
  void initState() {
    _getSloks();
    super.initState();
  }

  void _getSloks() async {
    try {
      isLoading = true;
      setState(() {});

      var response = await Dio().get("https://bhagavadgitaapi.in/chapters/");

      setState(() {
        chapter1 = response.data[0]["chapter_number"].toString();
        verseCount1 = response.data[0]["verses_count"].toString();
        name1 = response.data[0]["name"];
        translation1 = response.data[0]["translation"];
        meaningEnglish1 = response.data[0]["meaning"]["en"];
        meaningHindi1 = response.data[0]["meaning"]["hi"];
        summaryEnglish1 = response.data[0]["summary"]["en"];
        summaryHindi1 = response.data[0]["summary"]["hi"];
        // responseData = response.data;
        chapter2 = response.data[1]["chapter_number"].toString();
        verseCount2 = response.data[1]["verses_count"].toString();
        name2 = response.data[1]["name"];
        translation2 = response.data[1]["translation"];
        meaningEnglish2 = response.data[1]["meaning"]["en"];
        meaningHindi2 = response.data[1]["meaning"]["hi"];
        summaryEnglish2 = response.data[1]["summary"]["en"];
        summaryHindi2 = response.data[1]["summary"]["hi"];
        // responseData = response.data;
        chapter3 = response.data[2]["chapter_number"].toString();
        verseCount3 = response.data[2]["verses_count"].toString();
        name3 = response.data[2]["name"];
        translation3 = response.data[2]["translation"];
        meaningEnglish3 = response.data[2]["meaning"]["en"];
        meaningHindi3 = response.data[2]["meaning"]["hi"];
        summaryEnglish3 = response.data[2]["summary"]["en"];
        summaryHindi3 = response.data[2]["summary"]["hi"];
        // responseData = response.data;
        chapter4 = response.data[3]["chapter_number"].toString();
        verseCount4 = response.data[3]["verses_count"].toString();
        name4 = response.data[3]["name"];
        translation4 = response.data[3]["translation"];
        meaningEnglish4 = response.data[3]["meaning"]["en"];
        meaningHindi4 = response.data[3]["meaning"]["hi"];
        summaryEnglish4 = response.data[3]["summary"]["en"];
        summaryHindi4 = response.data[3]["summary"]["hi"];
        // responseData = response.data;
        chapter5 = response.data[4]["chapter_number"].toString();
        verseCount5 = response.data[4]["verses_count"].toString();
        name5 = response.data[4]["name"];
        translation5 = response.data[4]["translation"];
        meaningEnglish5 = response.data[4]["meaning"]["en"];
        meaningHindi5 = response.data[4]["meaning"]["hi"];
        summaryEnglish5 = response.data[4]["summary"]["en"];
        summaryHindi5 = response.data[4]["summary"]["hi"];
        // responseData = response.data;
        chapter6 = response.data[5]["chapter_number"].toString();
        verseCount6 = response.data[5]["verses_count"].toString();
        name6 = response.data[5]["name"];
        translation6 = response.data[5]["translation"];
        meaningEnglish6 = response.data[5]["meaning"]["en"];
        meaningHindi6 = response.data[5]["meaning"]["hi"];
        summaryEnglish6 = response.data[5]["summary"]["en"];
        summaryHindi6 = response.data[5]["summary"]["hi"];
        // responseData = response.data;
        chapter7 = response.data[6]["chapter_number"].toString();
        verseCount7 = response.data[6]["verses_count"].toString();
        name7 = response.data[6]["name"];
        translation7 = response.data[6]["translation"];
        meaningEnglish7 = response.data[6]["meaning"]["en"];
        meaningHindi7 = response.data[6]["meaning"]["hi"];
        summaryEnglish7 = response.data[6]["summary"]["en"];
        summaryHindi7 = response.data[6]["summary"]["hi"];
        // responseData = response.data;
        chapter8 = response.data[7]["chapter_number"].toString();
        verseCount8 = response.data[7]["verses_count"].toString();
        name8 = response.data[7]["name"];
        translation8 = response.data[7]["translation"];
        meaningEnglish8 = response.data[7]["meaning"]["en"];
        meaningHindi8 = response.data[7]["meaning"]["hi"];
        summaryEnglish8 = response.data[7]["summary"]["en"];
        summaryHindi8 = response.data[7]["summary"]["hi"];
        // responseData = response.data;
        chapter9 = response.data[8]["chapter_number"].toString();
        verseCount9 = response.data[8]["verses_count"].toString();
        name9 = response.data[8]["name"];
        translation9 = response.data[8]["translation"];
        meaningEnglish9 = response.data[8]["meaning"]["en"];
        meaningHindi9 = response.data[8]["meaning"]["hi"];
        summaryEnglish9 = response.data[8]["summary"]["en"];
        summaryHindi9 = response.data[8]["summary"]["hi"];
        // responseData = response.data;
        chapter10 = response.data[9]["chapter_number"].toString();
        verseCount10 = response.data[9]["verses_count"].toString();
        name10 = response.data[9]["name"];
        translation10 = response.data[9]["translation"];
        meaningEnglish10 = response.data[9]["meaning"]["en"];
        meaningHindi10 = response.data[9]["meaning"]["hi"];
        summaryEnglish10 = response.data[9]["summary"]["en"];
        summaryHindi10 = response.data[9]["summary"]["hi"];
        // responseData = response.data;
        chapter11 = response.data[10]["chapter_number"].toString();
        verseCount11 = response.data[10]["verses_count"].toString();
        name11 = response.data[10]["name"];
        translation11 = response.data[10]["translation"];
        meaningEnglish11 = response.data[10]["meaning"]["en"];
        meaningHindi11 = response.data[10]["meaning"]["hi"];
        summaryEnglish11 = response.data[10]["summary"]["en"];
        summaryHindi11 = response.data[10]["summary"]["hi"];
        // responseData = response.data;
        chapter12 = response.data[11]["chapter_number"].toString();
        verseCount12 = response.data[11]["verses_count"].toString();
        name12 = response.data[11]["name"];
        translation12 = response.data[11]["translation"];
        meaningEnglish12 = response.data[11]["meaning"]["en"];
        meaningHindi12 = response.data[11]["meaning"]["hi"];
        summaryEnglish12 = response.data[11]["summary"]["en"];
        summaryHindi12 = response.data[11]["summary"]["hi"];
        // responseData = response.data;
        chapter13 = response.data[12]["chapter_number"].toString();
        verseCount13 = response.data[12]["verses_count"].toString();
        name13 = response.data[12]["name"];
        translation13 = response.data[12]["translation"];
        meaningEnglish13 = response.data[12]["meaning"]["en"];
        meaningHindi13 = response.data[12]["meaning"]["hi"];
        summaryEnglish13 = response.data[12]["summary"]["en"];
        summaryHindi13 = response.data[12]["summary"]["hi"];
        // responseData = response.data;
        chapter14 = response.data[13]["chapter_number"].toString();
        verseCount14 = response.data[13]["verses_count"].toString();
        name14 = response.data[13]["name"];
        translation14 = response.data[13]["translation"];
        meaningEnglish14 = response.data[13]["meaning"]["en"];
        meaningHindi14 = response.data[13]["meaning"]["hi"];
        summaryEnglish14 = response.data[13]["summary"]["en"];
        summaryHindi14 = response.data[13]["summary"]["hi"];
        // responseData = response.data;
        chapter15 = response.data[14]["chapter_number"].toString();
        verseCount15 = response.data[14]["verses_count"].toString();
        name15 = response.data[14]["name"];
        translation15 = response.data[14]["translation"];
        meaningEnglish15 = response.data[14]["meaning"]["en"];
        meaningHindi15 = response.data[14]["meaning"]["hi"];
        summaryEnglish15 = response.data[14]["summary"]["en"];
        summaryHindi15 = response.data[14]["summary"]["hi"];
        // responseData = response.data;
        chapter16 = response.data[15]["chapter_number"].toString();
        verseCount16 = response.data[15]["verses_count"].toString();
        name16 = response.data[15]["name"];
        translation16 = response.data[15]["translation"];
        meaningEnglish16 = response.data[15]["meaning"]["en"];
        meaningHindi16 = response.data[15]["meaning"]["hi"];
        summaryEnglish16 = response.data[15]["summary"]["en"];
        summaryHindi16 = response.data[15]["summary"]["hi"];
        // responseData = response.data;
        chapter17 = response.data[16]["chapter_number"].toString();
        verseCount17 = response.data[16]["verses_count"].toString();
        name17 = response.data[16]["name"];
        translation17 = response.data[16]["translation"];
        meaningEnglish17 = response.data[16]["meaning"]["en"];
        meaningHindi17 = response.data[16]["meaning"]["hi"];
        summaryEnglish17 = response.data[16]["summary"]["en"];
        summaryHindi17 = response.data[16]["summary"]["hi"];
        // responseData = response.data;
        chapter18 = response.data[17]["chapter_number"].toString();
        verseCount18 = response.data[17]["verses_count"].toString();
        name18 = response.data[17]["name"];
        translation18 = response.data[17]["translation"];
        meaningEnglish18 = response.data[17]["meaning"]["en"];
        meaningHindi18 = response.data[17]["meaning"]["hi"];
        summaryEnglish18 = response.data[17]["summary"]["en"];
        summaryHindi18 = response.data[17]["summary"]["hi"];
        // responseData = response.data;
        isLoading = false;
      });
    } catch (e) {
      _getSloks();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Chapters",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Tile(
                        chapter: chapter1,
                        meaningEnglish: meaningEnglish1,
                        meaningHindi: meaningHindi1,
                        name: name1,
                        summaryEnglish: summaryEnglish1,
                        summaryHindi: summaryHindi1,
                        translation: translation1,
                        verseCount: verseCount1,
                      ),
                      Tile(
                        chapter: chapter2,
                        meaningEnglish: meaningEnglish2,
                        meaningHindi: meaningHindi2,
                        name: name2,
                        summaryEnglish: summaryEnglish2,
                        summaryHindi: summaryHindi2,
                        translation: translation2,
                        verseCount: verseCount2,
                      ),
                      Tile(
                        chapter: chapter3,
                        meaningEnglish: meaningEnglish3,
                        meaningHindi: meaningHindi3,
                        name: name3,
                        summaryEnglish: summaryEnglish3,
                        summaryHindi: summaryHindi3,
                        translation: translation3,
                        verseCount: verseCount3,
                      ),
                      Tile(
                        chapter: chapter4,
                        meaningEnglish: meaningEnglish4,
                        meaningHindi: meaningHindi4,
                        name: name4,
                        summaryEnglish: summaryEnglish4,
                        summaryHindi: summaryHindi4,
                        translation: translation4,
                        verseCount: verseCount4,
                      ),
                      Tile(
                        chapter: chapter5,
                        meaningEnglish: meaningEnglish5,
                        meaningHindi: meaningHindi5,
                        name: name5,
                        summaryEnglish: summaryEnglish5,
                        summaryHindi: summaryHindi5,
                        translation: translation5,
                        verseCount: verseCount5,
                      ),
                      Tile(
                        chapter: chapter6,
                        meaningEnglish: meaningEnglish6,
                        meaningHindi: meaningHindi6,
                        name: name6,
                        summaryEnglish: summaryEnglish6,
                        summaryHindi: summaryHindi6,
                        translation: translation6,
                        verseCount: verseCount6,
                      ),
                      Tile(
                        chapter: chapter7,
                        meaningEnglish: meaningEnglish7,
                        meaningHindi: meaningHindi7,
                        name: name7,
                        summaryEnglish: summaryEnglish7,
                        summaryHindi: summaryHindi7,
                        translation: translation7,
                        verseCount: verseCount7,
                      ),
                      Tile(
                        chapter: chapter8,
                        meaningEnglish: meaningEnglish8,
                        meaningHindi: meaningHindi8,
                        name: name8,
                        summaryEnglish: summaryEnglish8,
                        summaryHindi: summaryHindi8,
                        translation: translation8,
                        verseCount: verseCount8,
                      ),
                      Tile(
                        chapter: chapter9,
                        meaningEnglish: meaningEnglish9,
                        meaningHindi: meaningHindi9,
                        name: name9,
                        summaryEnglish: summaryEnglish9,
                        summaryHindi: summaryHindi8,
                        translation: translation9,
                        verseCount: verseCount9,
                      ),
                      Tile(
                        chapter: chapter10,
                        meaningEnglish: meaningEnglish10,
                        meaningHindi: meaningHindi10,
                        name: name10,
                        summaryEnglish: summaryEnglish10,
                        summaryHindi: summaryHindi10,
                        translation: translation10,
                        verseCount: verseCount10,
                      ),
                      Tile(
                        chapter: chapter11,
                        meaningEnglish: meaningEnglish11,
                        meaningHindi: meaningHindi11,
                        name: name11,
                        summaryEnglish: summaryEnglish11,
                        summaryHindi: summaryHindi11,
                        translation: translation11,
                        verseCount: verseCount11,
                      ),
                      Tile(
                        chapter: chapter12,
                        meaningEnglish: meaningEnglish12,
                        meaningHindi: meaningHindi12,
                        name: name12,
                        summaryEnglish: summaryEnglish12,
                        summaryHindi: summaryHindi12,
                        translation: translation12,
                        verseCount: verseCount12,
                      ),
                      Tile(
                        chapter: chapter13,
                        meaningEnglish: meaningEnglish13,
                        meaningHindi: meaningHindi13,
                        name: name13,
                        summaryEnglish: summaryEnglish13,
                        summaryHindi: summaryHindi13,
                        translation: translation13,
                        verseCount: verseCount13,
                      ),
                      Tile(
                        chapter: chapter14,
                        meaningEnglish: meaningEnglish14,
                        meaningHindi: meaningHindi14,
                        name: name14,
                        summaryEnglish: summaryEnglish14,
                        summaryHindi: summaryHindi14,
                        translation: translation14,
                        verseCount: verseCount14,
                      ),
                      Tile(
                        chapter: chapter15,
                        meaningEnglish: meaningEnglish15,
                        meaningHindi: meaningHindi15,
                        name: name15,
                        summaryEnglish: summaryEnglish15,
                        summaryHindi: summaryHindi15,
                        translation: translation15,
                        verseCount: verseCount15,
                      ),
                      Tile(
                        chapter: chapter16,
                        meaningEnglish: meaningEnglish16,
                        meaningHindi: meaningHindi16,
                        name: name16,
                        summaryEnglish: summaryEnglish16,
                        summaryHindi: summaryHindi16,
                        translation: translation16,
                        verseCount: verseCount16,
                      ),
                      Tile(
                        chapter: chapter17,
                        meaningEnglish: meaningEnglish17,
                        meaningHindi: meaningHindi17,
                        name: name17,
                        summaryEnglish: summaryEnglish17,
                        summaryHindi: summaryHindi17,
                        translation: translation17,
                        verseCount: verseCount17,
                      ),
                      Tile(
                        chapter: chapter18,
                        meaningEnglish: meaningEnglish18,
                        meaningHindi: meaningHindi18,
                        name: name18,
                        summaryEnglish: summaryEnglish18,
                        summaryHindi: summaryHindi18,
                        translation: translation18,
                        verseCount: verseCount18,
                      ),
                    ],
                  )),
            ),
    );
  }
}

class Tile extends StatelessWidget {
  final String name;
  final String translation;
  final String chapter;
  final String verseCount;
  final String meaningHindi;
  final String meaningEnglish;
  final String summaryEnglish;
  final String summaryHindi;
  const Tile({
    Key? key,
    required this.name,
    required this.translation,
    required this.chapter,
    required this.verseCount,
    required this.meaningHindi,
    required this.meaningEnglish,
    required this.summaryEnglish,
    required this.summaryHindi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Chapter: " + chapter),
        const SizedBox(
          height: 10,
        ),
        Text("Verse Count: " + verseCount),
        const SizedBox(
          height: 10,
        ),
        Text("Name: " + name),
        const SizedBox(
          height: 10,
        ),
        Text("Translation: " + translation),
        const SizedBox(
          height: 10,
        ),
        Text("Meaning (English): " + meaningEnglish),
        const SizedBox(
          height: 10,
        ),
        Text("Meaning (Hindi): " + meaningHindi),
        const SizedBox(
          height: 10,
        ),
        Text("Summary (English): " + summaryEnglish),
        const SizedBox(
          height: 10,
        ),
        Text("Summary (Hindi): " + summaryHindi),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
