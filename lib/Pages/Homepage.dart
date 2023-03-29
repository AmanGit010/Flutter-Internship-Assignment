import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                child: SizedBox(
                  height: 400,
                ),
              ),
            ),
            Text("Login Successful"),
          ],
        ),
        // ),
      ),
    );
  }
}
