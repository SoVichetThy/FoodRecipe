import 'package:final_project/app_screen.dart';
import 'package:final_project/view/home.dart';
import 'package:final_project/view/signin.dart';
import 'package:final_project/view/tabBar/tobecontiued.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffFF9B05),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Image.asset('image/8640023-removebg-preview 1.png'),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                'My Profile',
                                style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffFEFEFE),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 5,
                              bottom: 5,
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'image/myProfile.png',
                                  height: 70,
                                  width: 70,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        'Thy Sovichet',
                                        style: GoogleFonts.poppins(
                                            color: const Color(0xff0A0A0A),
                                            fontSize: 25,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'sovichet_thy9999@gmail.com',
                                        style: GoogleFonts.poppins(
                                            color: const Color(0xff0A0A0A),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SettingInput(
                  icon1: Icons.manage_accounts,
                  text: 'Account',
                  icon2: Icons.navigate_next_outlined,
                ),
                const SettingInput(
                  icon1: Icons.notifications,
                  text: 'Notifications',
                  icon2: Icons.navigate_next_outlined,
                ),
                const SettingInput(
                  icon1: Icons.sunny,
                  text: 'Theme Mode',
                  icon2: Icons.navigate_next_outlined,
                ),
                const SettingInput(
                  icon1: Icons.lock_outline_rounded,
                  text: 'Privacy and Security',
                  icon2: Icons.navigate_next_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 10, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xffEA580C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signin(),
                              ),
                            );
                          },
                          child: Text(
                            'Logout',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingInput extends StatelessWidget {
  final IconData icon1;
  final String text;
  final IconData icon2;
  const SettingInput(
      {super.key,
      required this.icon1,
      required this.text,
      required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon1),
              const SizedBox(
                width: 15,
              ),
              Text(text),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Tobecontiued(),
                    ),
                  );
                },
                icon: Icon(
                  icon2,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
