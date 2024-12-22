import 'package:final_project/Data/dummy.dart';
import 'package:final_project/app_screen.dart';
import 'package:final_project/model/timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleFoodLayout extends StatefulWidget {
  const SingleFoodLayout({super.key});

  @override
  State<SingleFoodLayout> createState() => _SingleFoodLayoutState();
}

class _SingleFoodLayoutState extends State<SingleFoodLayout> {
  late Timer _timer;
  bool _isTimeRunning = false;
  void _toggleTimer() {
    setState(() {
      if (_isTimeRunning) {
        _timer.stop();
        _isTimeRunning = false;
      } else {
        _timer.start();
        _isTimeRunning = true;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer(id: 'timer1');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                child: Image.asset(
                    'image/tabar/snack/Gemini_Generated_Image_wpsbpewpsbpewpsb.jpeg'),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 350,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 800,
                      decoration: BoxDecoration(
                        color: const Color(0xffE5E7EB),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 25, right: 25, bottom: 10),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'KHMER NumPangPaTe',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Divider(
                                thickness: 3,
                              ),
                              Text(
                                'Num Pang Pa Té is a crispy baguette filled with pork pâté, pickles, and fresh herbs',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'INGREDIENTS',
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xffEA580C),
                                  ),
                                ),
                              ),
                              ...List.generate(
                                dummyRecipe[0].ingredients.length,
                                (index) {
                                  return Column(
                                    children: [
                                      const Divider(),
                                      BulletTextInBoldTitle(
                                          bulletText:
                                              '\u2022 ${dummyRecipe[0].ingredients[index].name}',
                                          unit: '10g'),
                                    ],
                                  );
                                },
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xffEA580C),
                                ),
                                child: TextButton(
                                  onPressed: _toggleTimer,
                                  child: Center(
                                    child: Text(
                                      _isTimeRunning
                                          ? 'Stop COOKING'
                                          : 'Start COOKING',
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              if (_timer.startTime != null &&
                                  _timer.endTime != null)
                                Center(
                                  child: Text(
                                    'Duration: ${_timer.getDuration().inMinutes} minutes',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const AppScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xffEA580C),
          ),
        ),
      ),
    );
  }
}

class BulletTextInBoldTitle extends StatelessWidget {
  final String bulletText;
  final String unit;
  const BulletTextInBoldTitle({
    super.key,
    required this.bulletText,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bulletText,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          unit,
          style: GoogleFonts.poppins(
              fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ],
    );
  }
}

class BoldTitleTextAboveBullet extends StatelessWidget {
  final String text;
  const BoldTitleTextAboveBullet({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
