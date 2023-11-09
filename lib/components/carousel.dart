// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          height: 40,
          width: 400,
          margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 2, 0, 112),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 2, 0, 112),
                Color.fromARGB(255, 47, 44, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    "Invierte en ti",
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Prioriza tu salud.",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Btn(text: "Agendar aqui!"),
                ],
              ),
              const Spacer(),
              Align(
                child: Image.network(
                  "https://i.ibb.co/LC54c4m/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background.jpg",
                  width: 120,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 40,
          width: 400,
          margin: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: const Color(0xff721c80),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 2, 0, 112),
                Color.fromARGB(255, 47, 44, 255),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    "Tu cita a un",
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "click",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Btn(text: "Agendar aqui!"),
                ],
              ),
              const Spacer(),
              Align(
                child: Image.network(
                  "https://i.ibb.co/dQMGqT2/1536475.png",
                  width: 120,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),

      ],
      options: CarouselOptions(
        //autoPlayInterval: Duration(minutes: 1),
        disableCenter: true,
        reverse: false,
        enableInfiniteScroll: false,
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 10 / 8,
        autoPlayCurve: Curves.easeInOut,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.78,
      ),
    );
  }
}

class Btn extends StatelessWidget {
  final String text;
  const Btn({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(12),
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromARGB(255, 28, 31, 128),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 8, 4, 220),
            Color.fromARGB(255, 47, 44, 255),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      )),
    );
  }
}
