import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_assignment/Pages/MainPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_assignment/firebase_options.dart';

void main() {
  runApp(landing());
}

class landing extends StatefulWidget {
  const landing({super.key});

  @override
  State<landing> createState() => _landingState();
}

class _landingState extends State<landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBox(
              //   height: 10,
              // ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "Images/1.png",
                    height: 400,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Center(
                // padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "Growing your",
                  style: GoogleFonts.notoSansAvestan(
                      fontSize: 40,
                      color: Colors.black,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                  // TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //     fontFamily: GoogleFonts.notoSansAvestan()),
                ),
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "business is",
                        style: GoogleFonts.notoSansAvestan(
                          fontSize: 40,
                          color: Colors.black,
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextSpan(
                        text: " easier",
                        style: GoogleFonts.notoSansAvestan(
                          fontSize: 40,
                          color: const Color.fromARGB(255, 92, 64, 255),
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                // padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "then you think!",
                  style: GoogleFonts.notoSansAvestan(
                      fontSize: 40,
                      color: Colors.black,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                  // TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //     fontFamily: GoogleFonts.notoSansAvestan()),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                // padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "Sign up takes only 2 minutes",
                  style: GoogleFonts.notoSansAvestan(
                      fontSize: 20,
                      color: Colors.grey,
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  // TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //     fontFamily: GoogleFonts.notoSansAvestan()),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              // ElevatedButton(onPressed: () {}, child: const Text("Get started"), style: ButtonStyle(),)
              Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => mainpage(),
                      ),
                    );
                  },
                  child: Container(
                    // padding: const EdgeInsets.all(20),
                    // margin: const EdgeInsets.symmetric(horizontal: 65),
                    // duration: const Duration(seconds: 1),
                    //button
                    width: 370,
                    height: 55,
                    alignment: Alignment.center,

                    child: const Text(
                      "Get started",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Material(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => mainpage(),
                      ),
                    );
                  },
                  child: Container(
                    // padding: const EdgeInsets.all(20),
                    // margin: const EdgeInsets.symmetric(horizontal: 65),
                    // duration: const Duration(seconds: 1),
                    //button
                    width: 370,
                    height: 55,
                    alignment: Alignment.center,

                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // );
  }
}
