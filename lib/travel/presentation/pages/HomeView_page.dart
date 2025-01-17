import 'package:air_travel/travel/presentation/widgets/TourPackage_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [TourPackageItem()],
      ),
    );
  }
}
