import 'package:final_project/app_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Tobecontiued extends StatelessWidget {
  const Tobecontiued({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AppScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Text(
                      'Under Construction!',
                      style: GoogleFonts.poppins(
                          color: Colors.orange,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Lottie.asset('image/JSON/Road_roller.json'),
              Image.asset(
                'image/construction-set-icons_24877-60028.avif',
                width: MediaQuery.of(context).size.width,
                height: 380,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
