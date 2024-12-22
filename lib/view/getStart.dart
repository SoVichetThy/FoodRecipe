import 'package:final_project/main.dart';
import 'package:final_project/view/signup.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Getstart());
}

class Getstart extends StatelessWidget {
  const Getstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFF9B05),
              Color(0xffE7E7E7),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'HUB',
                            style: GoogleFonts.poppins(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffEA580C),
                            ),
                          ),
                        ],
                        text: 'Food ',
                        style: GoogleFonts.poppins(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [],
                  ),
                ),
                Image.asset('image/BOOK.png'),
                const SizedBox(
                  height: 72,
                ),
                Text(
                  'Welcome, folks!',
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffEA580C),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return const Signup();
                        },
                      ));
                    },
                    child: Text(
                      'Get STARTED',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
