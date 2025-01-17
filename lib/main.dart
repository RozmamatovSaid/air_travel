import 'package:air_travel/travel/presentation/pages/HomeView_page.dart';
import 'package:air_travel/travel/presentation/pages/MoreDetails_page.dart';
import 'package:flutter/material.dart';

import 'travel/presentation/widgets/TourPackage_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
