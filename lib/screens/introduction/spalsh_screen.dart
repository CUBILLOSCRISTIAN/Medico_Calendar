import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medico_calendar/screens/introduction/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isAnimate = true;
  bool isClicked = false;

  final width = 50;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), (() {
      setState(() {
        isAnimate = false;
      });
    }));

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: ((context) => const OnBoardingScreen())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 150),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.only(top: isAnimate ? 40 : 0),
                  duration:const  Duration(seconds: 3),
                  curve: Curves.easeInOutCubicEmphasized,
                  child: AnimatedOpacity(
                    opacity: isAnimate ? 0 : 1,
                    duration:const Duration(seconds: 2),
                    curve: Curves.easeInCubic,
                    child:const CircleAvatar(
                      backgroundColor: Color.fromARGB(0, 155, 39, 176),
                      radius: 80,
                      foregroundImage: NetworkImage(
                          "https://i.ibb.co/y020bmg/pngwing-com.png"),
                    ),
                  ),
                ),
               const SizedBox(
                  height: 30,
                ),
                AnimatedPadding(
                  padding: EdgeInsets.only(top: isAnimate ? 40 : 0),
                  duration:const Duration(seconds: 3),
                  curve: Curves.easeInOutCubicEmphasized,
                  child: AnimatedOpacity(
                    opacity: isAnimate ? 0 : 1,
                    duration:const Duration(seconds: 2),
                    curve: Curves.easeInCubic,
                    child: const Text(
                      "MediConnect",
                      style: TextStyle(
                          color: Color.fromARGB(255, 39, 144, 176),
                          fontSize: 35,
                          letterSpacing: 1.3,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
