import 'package:diamond_owner/pages/I_am_Rich.dart';
import 'package:diamond_owner/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

// Learning how to use PageView
class _IntroPageState extends State<IntroPage> {
  PageController _controller = PageController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) => () {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Container(
                color: Colors.white,
                child: Center(
                  child: Image(
                    image: AssetImage('assets/images/welcome-1.png'),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Center(
                  child: Image(
                    image: AssetImage('assets/images/welcome-2.png'),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Center(
                  child: Image(
                    image: AssetImage('assets/images/welcome-3.png'),
                  ),
                ),
              ),
            ],
          ),

          // dot page indicator
          Container(
            alignment: Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip button
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text('skip'),
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                // next/done button
                // onLastPage
                //     ?
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ProductScreen();
                        },
                      ),
                    );
                  },
                  child: Text('done'),
                ),
                // : GestureDetector(
                //     onTap: () {
                //       _controller.nextPage(
                //         duration: Duration(milliseconds: 500),
                //         curve: Curves.easeIn,
                //       );
                //     },
                //     child: Text('next'),
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
