// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sneakers_app/pages/home_page.dart';

class IntroBoardingPage extends StatefulWidget {
  const IntroBoardingPage({super.key});

  @override
  State<IntroBoardingPage> createState() => _IntroBoardingPageState();
}

class _IntroBoardingPageState extends State<IntroBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //! LOgo

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  "assets/images/Nike1.png",
                  height: 240,
                  width: 300,
                ),
              ),
              const SizedBox(height: 48),
              //! Text1
              Text(
                "Just Do It",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              //! Text2
              Text(
                "Brand new sneakers and custome kicks made with premium quality",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              //! Button
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                ),
                child: Container(
                  // height: 45,
                  // width: 140,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                        color: Colors.white,
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
  }
}
