import 'package:final_project/Data/dummy_homecook.dart';
import 'package:final_project/app_screen.dart';
import 'package:final_project/view/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String email = "";
  String password = "";
  void onSubmit() {
    if (key.currentState!.validate()) {
      key.currentState!.save();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AppScreen(),
        ),
      );
    }
  }

  final GlobalKey<FormState> key = GlobalKey<FormState>();
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
                decoration: BoxDecoration(
                  color: const Color(0xffFF9B05),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Image.asset('image/8640023-removebg-preview 1.png'),
                    Center(
                      child: Text(
                        'Welcome, back!!',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Form(
                key: key,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 69,
                    ),
                    Text(
                      'Email',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onSaved: (newValue) {
                        email = newValue!;
                        print(newValue);
                      },
                      validator: (value) {
                        if (value!.isEmpty ||
                            !value.contains('@gmail.com') ||
                            !(value == homecook.first.email)) {
                          return 'Email Invalid';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'sovichet_thy9999@gmail.com'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      onSaved: (newValue) {
                        password = newValue!;
                        print(newValue);
                      },
                      validator: (value) {
                        if (value!.isEmpty ||
                            !(value == homecook.first.password)) {
                          return 'Password Invalid';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(hintText: '*********'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 105,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffEA580C),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                            left: 152, right: 152, top: 15, bottom: 15)),
                    onPressed: onSubmit,
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont have account?',
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(130, 0, 0, 0)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffEA580C),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
