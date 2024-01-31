import 'package:flight_booking/widgets/splash_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/Minimal blue.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 60,
            right: 0,
            child: Image.asset('asset/images/airplane-removebg-preview.png',
                height: 60, width: 60),
          ),
          Positioned(
            top: 160,
            bottom: 200.0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: const Color.fromARGB(255, 15, 25, 163),
                    highlightColor: Colors.white,
                    child: Text("Let's Explore",
                        style: GoogleFonts.aboreto(
                          fontSize: 50,
                        )),
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.white,
                    highlightColor: const Color.fromARGB(255, 15, 25, 163),
                    child: Text("the",
                        style: GoogleFonts.aboreto(
                            fontSize: 50, color: Colors.white)),
                  ),
                  Shimmer.fromColors(
                    baseColor: const Color.fromARGB(255, 112, 11, 158),
                    highlightColor: Colors.white,
                    child: Text("Journey",
                        style: GoogleFonts.aboreto(
                          fontSize: 50,
                        )),
                  ),
                  const SizedBox(height: 8.0),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SplashButton(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              text: 'Get Started',
            ),
          ),
        ],
      ),
    );
  }
}
