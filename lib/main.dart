import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:digitalgita/constants.dart';
import 'package:digitalgita/onboarding_screen.dart';
import 'package:digitalgita/root.dart';
import 'package:digitalgita/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Digital Gita',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.montserratTextTheme()),
        home: AnimatedSplashScreen(
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: backColor1,
            splash: const Center(
                child: Image(image: AssetImage('assets/img3.png'))),
            nextScreen: const Navigatior()));
  }
}

class Navigatior extends StatefulWidget {
  const Navigatior({Key? key}) : super(key: key);

  @override
  State<Navigatior> createState() => _NavigatiorState();
}

class _NavigatiorState extends State<Navigatior> {
  @override
  void initState() {
    getbool();
    super.initState();
  }

  bool isViewed = false;
  getbool() async {
     SharedPrefs.getIsViewedState().then((value) {
      setState(() {
        isViewed = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isViewed ? const Root() : const OnboardingScreen();
  }
}
