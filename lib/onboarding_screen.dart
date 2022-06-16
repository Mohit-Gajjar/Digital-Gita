import 'package:digitalgita/constants.dart';
import 'package:digitalgita/policy_dialog.dart';
import 'package:digitalgita/root.dart';
import 'package:digitalgita/shared_prefs.dart';
import 'package:digitalgita/terms_and_conditions_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor2,
      body: Stack(
        children: [
          const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20, bottom: 90),
                child: Opacity(
                  opacity: .3,
                  child:
                      Image(height: 250, image: AssetImage("assets/img4.png")),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "“Where the needle goes, the thread follows.”",
                  style: TextStyle(
                      color: bigTextcolor,
                      fontSize: MediaQuery.of(context).size.width / 6),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber[400]),
                      fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      SharedPrefs.saveIsViewedState(true);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Root()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: backColor2,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text:
                      "By clicking on Get Started button, you are agreeing to our\n",
                  style: const TextStyle(
                      fontWeight: FontWeight.w100, color: Colors.white),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const TermsAndConditionsDialog();
                                });
                          },
                        text: "Terms & Conditions ",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    const TextSpan(
                        text: "and ", style: TextStyle(color: Colors.white)),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const PolicyDialog();
                                });
                          },
                        text: "Privacy Policy ",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ]),
            ),
          ),
        ),
        height: 60,
      ),
    );
  }
}
