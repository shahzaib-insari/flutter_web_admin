import 'package:flutter/material.dart';
import 'package:flutter_web_admin/pages/home_page.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Admin Pannel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.black),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
