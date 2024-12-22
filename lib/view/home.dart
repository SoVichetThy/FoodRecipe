import 'dart:ui';

import 'package:final_project/app_screen.dart';
import 'package:final_project/view/setting.dart';
import 'package:final_project/view/signin.dart';
import 'package:final_project/view/tabBar/curries.dart';
import 'package:final_project/view/tabBar/smooties.dart';
import 'package:final_project/view/tabBar/snacks.dart';
import 'package:final_project/view/tabBar/soup.dart';
import 'package:final_project/view/tabBar/stir_fried.dart';
import 'package:final_project/view/tabBar/tobecontiued.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  int myIndex = 1;

  late TabController tabController;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
    tabController = TabController(length: 10, vsync: this);
  }

  int tabBarTracker = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 225,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 25),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signin()),
                            );
                          },
                          icon: const Icon(
                            Icons.logout,
                            size: 30,
                            color: Color(0xffEA580C),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Lets Start Cooking!',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Image.asset(
                            'image/myProfile.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 16),
                      child: Text(
                        'Hello, Vichet',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffEA580C),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Find Your Food',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 15, bottom: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Your Food',
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color: Color(0xffEA580C),
                          ),
                          suffixIcon: const Icon(
                            Icons.food_bank_outlined,
                            color: Color(0xffEA580C),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(200, 0, 0, 0),
                            ),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottom: TabBar(
                isScrollable: true,
                controller: tabController,
                // labelPadding: EdgeInsets.all(0),
                tabAlignment: TabAlignment.start,
                tabs: const [
                  Text('Snacks'),
                  Text('Soup'),
                  Text('Curries'),
                  Text('Stir-Fried'),
                  Text('Smooties'),
                  Text('To be Continued'),
                  Text('To be Continued'),
                  Text('To be Continued'),
                  Text('To be Continued'),
                  Text('To be Continued'),
                ],
              ),
            ),
            buildPageView(tabController, context)
          ],
        ),
      ),
    );
  }
}

Widget buildPageView(TabController controller, BuildContext context) {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: TabBarView(
        controller: controller,
        children: [
          Snacks(),
          Soup(),
          Curries(),
          Stirfried(),
          Smooties(),
          const Tobecontiued(),
          const Tobecontiued(),
          const Tobecontiued(),
          const Tobecontiued(),
          const Tobecontiued()
        ],
      ),
    ),
  );
}
