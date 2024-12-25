import 'package:final_project/Data/dummy.dart';
import 'package:final_project/app_screen.dart';
import 'package:final_project/model/recipe_model.dart';
import 'package:final_project/model/timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleFoodLayout extends StatefulWidget {
  final RecipeModel recipe;
  const SingleFoodLayout({
    super.key,
    required this.recipe,
  });

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
                child: Image.asset(widget.recipe.img),
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
                                widget.recipe.ingredients.length,
                                (index) {
                                  return Column(
                                    children: [
                                      const Divider(),
                                      BulletTextInBoldTitle(
                                        bulletText:
                                            '\u2022 ${widget.recipe.ingredients[index].name}',
                                        unit: widget.recipe.ingredients[index]
                                            .unit.name,
                                        quantity: widget
                                            .recipe.ingredients[index].quan,
                                      ),
                                    ],
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10,
                                ),
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
  final int quantity;
  const BulletTextInBoldTitle(
      {super.key,
      required this.bulletText,
      required this.unit,
      required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          bulletText,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Text(
          quantity.toString(),
          style: GoogleFonts.poppins(
              fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
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
