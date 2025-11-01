import 'package:flutter/material.dart';

class IAmRich extends StatelessWidget {
  const IAmRich({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          title: Text(
            'I Am Rich',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 150),
            Center(
              child: Image(image: AssetImage('assets/images/diamond.png')),
            ),
            SizedBox(height: 50),
            Text(
              'If you\'re seeing this page, it means your payment of \$999.9 was successful',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[100],
                fontSize: 11,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
