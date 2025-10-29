import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  bool ohTurn = true; // 1st player is oh!
  List<String> displayExOh = ['', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: GridView.builder(
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _tapped(index);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[700]!),
              ),
              child: Center(
                child: Text(
                  displayExOh[index],
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  //on box tap logic
  void _tapped(int index) {
    setState(() {
      displayExOh[index] = 'o';
    });
  }

  void _checkWinner9() {}

  void _showWinDialog() {}
}
