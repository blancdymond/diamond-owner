import 'package:diamond_owner/intro_pages/intro_page.dart';
import 'package:diamond_owner/pages/I_am_Rich.dart';
import 'package:diamond_owner/product_screen.dart';
import 'package:diamond_owner/themes/theme_provider.dart';
import 'package:diamond_owner/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Am Rich',
      home: PageView(children: [IntroPage()]),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
