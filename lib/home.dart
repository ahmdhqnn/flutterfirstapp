import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: const Color(0xff51A8FF),
        width: double.infinity,
        height: 350,
        padding: const EdgeInsets.all(16),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Hi Madmax',
              style: TextStyle(fontSize: 18, color: Color(0xffFFFFFF)),
            ),
            Text(
              "Let's find\nYour Top doctor",
              style: TextStyle(
                fontSize: 28,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search, color: Colors.black, size: 25),
                hintText: "Search here...",
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
