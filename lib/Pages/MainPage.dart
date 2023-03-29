import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_assignment/Pages/Homepage.dart';
import 'package:login_assignment/Pages/LandingPage.dart';
import 'package:login_assignment/utils/routes.dart';

void main() {
  runApp(mainpage());
}

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final _formkey = GlobalKey<FormState>();
  MoveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        // changebutton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, Myroutes.mainpage);
      setState(() {
        // changebutton = false;
      });
    }
  }

  final _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    Image.asset(
                      "Images/2.png",
                      height: 300,
                    ),
                  ],
                ),
              ),
              Center(
                // padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "Welcome back!",
                  style: GoogleFonts.notoSansAvestan(
                      fontSize: 48,
                      color: Colors.black,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                  // TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //     fontFamily: GoogleFonts.notoSansAvestan()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                // padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  "You've been missed",
                  style: GoogleFonts.notoSansAvestan(
                      fontSize: 20,
                      color: Colors.grey,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                  // TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //     fontFamily: GoogleFonts.notoSansAvestan()),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Material(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(5),
                  child: InkWell(
                    onTap: () async {
                      // AuthService().signinwithgoogle();
                      GoogleSignInAccount? googleUser =
                          await _googleSignIn.signIn();

                      if (googleUser != null) {
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      // margin: const EdgeInsets.symmetric(horizontal: 65),
                      // duration: const Duration(seconds: 1),
                      //button
                      width: 370,
                      height: 63,
                      alignment: Alignment.center,

                      child: Center(
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 55,
                            ),
                            Icon(FontAwesomeIcons.google),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              "Sign in with Google",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or',
                        style: GoogleFonts.notoSansAvestan(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailcontroller,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Email",
                        // border: BorderRadius.circular(10),
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        // fillColor: Colors.grey.shade100,
                        // filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: "Password",
                        // border: BorderRadius.circular(10),
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        // fillColor: Colors.grey.shade100,
                        // filled: true,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => home(),
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
                              color: Colors.white,
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
              const SizedBox(
                height: 10,
              ),
              Center(
                // padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const landing(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign up here",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 92, 64, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Login function
  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(
              email: emailcontroller.text.toString().trim(), password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful!"),
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => const home()),
                  ),
                )
              })
          .catchError((error) {
        Fluttertoast.showToast(msg: error!.message);
      });
    }
  }
}
