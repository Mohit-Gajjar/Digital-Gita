import 'dart:math';

import 'package:digitalgita/hindi_translation.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Slok extends StatefulWidget {
  const Slok({Key? key}) : super(key: key);

  @override
  State<Slok> createState() => _SlokState();
}

class _SlokState extends State<Slok> {
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
      var rndChapters = chapters.nextInt(18);
      var rndSlok = slokR.nextInt(100);
      var response = await Dio().get("https://bhagavadgitaapi.in/slok/" +
          rndChapters.toString() +
          "/" +
          rndSlok.toString());
      responseA = response.data;
      // print(responseA);
      setState(() {
        chapter = responseA['chapter'].toString();
        verse = responseA['verse'].toString();
        slok = responseA['slok'].toString();
        englishCommentry = responseA["siva"]['ec'];
        englishTranslation = responseA["siva"]["et"];
        hindiTranslation = responseA["tej"]["ht"];
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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getSloks,
        child: const Icon(Icons.replay_outlined),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Slok:",
                      style: TextStyle(fontSize: 28),
                    ),
                    Center(
                      child: Text(
                        slok,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Means: ",
                      style: TextStyle(fontSize: 28),
                    ),
                    Center(
                      child: Text(
                        englishTranslation,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HindiTranslation(
                                    content: hindiTranslation))),
                        child: const Text("Hindi Translation")),
                  ],
                ),
        ),
      ),
      bottomSheet: const Image(image: AssetImage('assets/img1.png')),
    );
  }
}
