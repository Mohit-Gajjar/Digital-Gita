import 'dart:math';

import 'package:digitalgita/constants.dart';
import 'package:digitalgita/hindi_translation.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Slok extends StatefulWidget {
  const Slok({Key? key}) : super(key: key);

  @override
  State<Slok> createState() => _SlokState();
}

class _SlokState extends State<Slok> {
  // ignore: prefer_typing_uninitialized_variables
  var responseA;
  String verse = " ";
  String chapter = " ";
  String slok = " ";
  String englishTranslation = " ";
  String englishCommentry = " ";
  String hindiTranslation = " ";
  bool isLoading = false;
  @override
  void initState() {
    _getSloks();
    super.initState();
  }

  void _getSloks() async {
    try {
      isLoading = true;
      setState(() {});
      var chapters = Random();
      var slokR = Random();
      int rndChapters = chapters.nextInt(18);
      int rndSlok = slokR.nextInt(100);
      String _url = "https://bhagavadgitaapi.in/slok/" +
          rndChapters.toString() +
          "/" +
          rndSlok.toString() +
          "/";
      Response response = await Dio().get(_url);

      responseA = response.data;
      setState(() {
        chapter = responseA['chapter'].toString();
        verse = responseA['verse'].toString();
        slok = responseA['slok'].toString();
        englishCommentry = responseA["siva"]['ec'];
        englishTranslation = responseA["siva"]["et"];
        hindiTranslation = responseA["tej"]["ht"];

        isLoading = false;
        print("Methord Working");
      });
    } catch (e) {
      _getSloks();
      print("refreshing");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor1,
      floatingActionButton: FloatingActionButton(
        onPressed: _getSloks,
        child: const Icon(Icons.replay_outlined),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.1,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/img5.png',
                        ),
                        fit: BoxFit.fill)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: SelectableText(
                        slok,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: SelectableText(
                        englishTranslation,
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HindiTranslation(
                                      content: hindiTranslation))),
                          child: const Text(
                            "Hindi Translation",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black),
                          )),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
