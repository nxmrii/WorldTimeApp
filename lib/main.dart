import 'dart:async'; // Added for potential loading screen usage

import 'package:flutter/material.dart';
import 'package:worldtimerapp/presentation/choose_location_screen.dart';
import 'package:worldtimerapp/presentation/home_location_screen.dart';
import 'package:worldtimerapp/presentation/loading_screen.dart'; // Import LoadingScreen

void main() async {
  // Consider using a Future for potential loading logic
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(minutes: 10000)); // Simulate loading (optional)
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Time App', // Set a more descriptive title
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home_location', // Set initial route to HomeLocationScreen
      routes: {
        '/home_location': (context) => const HomeLocationScreen(),
        '/choose_location': (context) => const ChooseLocationScreen(),
        '/loading_screen': (context) => const LoadingScreen(), // Add LoadingScreen route
      },
    );
  }
}



