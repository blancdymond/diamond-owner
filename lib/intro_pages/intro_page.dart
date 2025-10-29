import 'package:diamond_owner/pages/I_am_Rich.dart';
import 'package:diamond_owner/product_screen.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

// Learning how to use PageView
class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.pink),
          Container(color: Colors.green),
          Container(color: Colors.blueGrey),
          IAmRich(),
          ProductScreen(),
        ],
      ),
    );
  }
}
