import 'package:flutter/material.dart';

class HindiTranslation extends StatefulWidget {
  final String content;
  const HindiTranslation({Key? key, required this.content}) : super(key: key);

  @override
  State<HindiTranslation> createState() => _HindiTranslationState();
}

class _HindiTranslationState extends State<HindiTranslation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "Hindi Translation",
              style: TextStyle(color: Colors.white),
            )),
        body: Stack(
          children: [
            const Image(image: AssetImage('assets/img2.png')),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                    child: Text(
                  widget.content,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ))),
          ],
        ));
  }
}
