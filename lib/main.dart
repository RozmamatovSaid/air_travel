import 'package:air_travel/travel/presentation/pages/HomeView_page.dart';
import 'package:air_travel/travel/presentation/pages/MoreDetails_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'travel/presentation/widgets/TourPackage_widget.dart';

GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeView(),
      routes: [
        GoRoute(
          path: '/details',
          builder: (context, state) => MoreDetails(),
        ),
      ],
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
