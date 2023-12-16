import 'package:flutter/material.dart';
import 'package:my_taxi/login_screen.dart';
import 'package:my_taxi/signup_screen.dart';

class MyTaxi extends StatefulWidget {
  const MyTaxi({super.key});

  @override
  State<MyTaxi> createState() {
    return _MyTaxiState();
  }
}

class _MyTaxiState extends State<MyTaxi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
      ),
      home: const LoginScreen(),
      routes: {
        '/signup-screen': (context) => const SignupScreen(),
        '/login-screen': (context) => const LoginScreen(),
      },
      // home: Scaffold(
      //   body: Container(
      //     decoration: const BoxDecoration(
      //       gradient: LinearGradient(
      //         colors: [
      //           Color.fromARGB(255, 31, 81, 216),
      //           Color.fromARGB(255, 4, 34, 115),
      //         ],
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomCenter,
      //       ),
      //     ),
      //     child: screenWidget,
      //   ),
      // ),
    );
  }
}
