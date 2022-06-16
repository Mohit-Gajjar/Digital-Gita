import 'package:digitalgita/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  _launchURLWebsite() async {
    // ignore: deprecated_member_use
    if (await canLaunch("https://bhagavadgitaapi.in/")) {
      // ignore: deprecated_member_use
      await launch("https://bhagavadgitaapi.in/",
          forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch https://bhagavadgitaapi.in/';
    }
  }

  _launchURLGithub() async {
    // ignore: deprecated_member_use
    if (await canLaunch(
        "https://github.com/vedicscriptures/bhagavad-gita-api")) {
      // ignore: deprecated_member_use
      await launch("https://github.com/vedicscriptures/bhagavad-gita-api",
          forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch https://github.com/vedicscriptures/bhagavad-gita-api';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor1,
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(width: 100, image: AssetImage('assets/logo.png')),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Project by Team DebugLabs",
              style: TextStyle(fontSize: 30, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const SelectableText(
              "Contact: debuglabs.io@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Data Source",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "https://bhagavadgitaapi.in/",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 200,
              child: Text(
                "Bhagavad-Gita-API is An opensource lightweight Node.js based rest API on Vedic Scripture Shrimad Bhagavad Gita.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: _launchURLWebsite, child: const Text("Website")),
                TextButton(
                    onPressed: _launchURLGithub, child: const Text("GitHub")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
