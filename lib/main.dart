import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Day-6',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Day-6'), 
          backgroundColor: Colors.blue, 
        ),
        backgroundColor: const Color(0xFFE3E8FF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://tinyjpg.com/images/social/website.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
