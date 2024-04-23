import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/colors.dart';
import 'package:whatsapp_flutter/responsive/responsive_layout.dart';
import 'package:whatsapp_flutter/screens/mobile_screen_layout.dart';
import 'package:whatsapp_flutter/screens/web_screen_layout.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Flutter Responsive UI',
     theme: ThemeData.dark().copyWith(
       scaffoldBackgroundColor: backgroundColor,
     ),
     debugShowCheckedModeBanner: false,
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout()),
    );
  }
}


