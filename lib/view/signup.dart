import 'package:final_project/view/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  //final String
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  void onSubmit() {
    key.currentState!.validate();
  }

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
                      right: 0,
                      child: Row(
                        children: [
                          Text(
                            'Create Account!',
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 40),
              child: Form(
                key: key,
                child: Column(
                  children: [
                    InputInfo(
                      text: 'Name',
                      hintText: 'Sovichet Thy',
                      onValidate: (p0) {
                        if (p0 != null && p0.isNotEmpty) {
                          return null;
                        }
                        return 'Name Invalid';
                      },
                    ),
                    InputInfo(
                      text: 'Email',
                      hintText: 'sovichet_thy9999@gmail.com',
                      onValidate: (p0) {
                        if (p0 != null && p0.isNotEmpty) {
                          return null;
                        }
                        return 'Email Invalid';
                      },
                    ),
                    InputInfo(
                      text: 'Password',
                      hintText: '********',
                      onValidate: (p0) {
                        if (p0 != null && p0.isNotEmpty) {
                          return null;
                        }
                        return 'Password Invalid';
                      },
                    ),
                    InputInfo(
                      text: 'Confirm Password',
                      hintText: '********',
                      onValidate: (p0) {
                        if (p0 != null && p0.isNotEmpty) {
                          return null;
                        }
                        return 'PasswordConfirm Invalid';
                      },
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
                  height: 80,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffEA580C),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(
                          left: 152, right: 152, top: 15, bottom: 10),
                    ),
                    onPressed: onSubmit,
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an Account?',
                      style: GoogleFonts.poppins(
                          color: const Color.fromARGB(130, 0, 0, 0)),
                    ),
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
                        'Sign In',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffEA580C)),
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

class InputInfo extends StatelessWidget {
  String text;
  String hintText;
  String? Function(String?)? onValidate;
  InputInfo({
    super.key,
    required this.text,
    required this.hintText,
    this.onValidate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        TextFormField(
          validator: onValidate,
          decoration: InputDecoration(hintText: hintText),
        ),
      ],
    );
  }
}
