import 'package:chillex/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chillex());
}

class Chillex extends StatelessWidget {
  const Chillex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Chillex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFa300ff)),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
