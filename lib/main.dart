import 'package:flutter/material.dart';
import 'package:lyn/responsive/responsiveLayer.dart';
import 'package:lyn/web/first_consultation.dart';

import 'mobile/first_consultation_mob.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayer(
          mobileBody: FirstConsultationMob(), webBody: FirstConsultation()),
    );
  }
}