import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 6 work',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Day-6'),
          backgroundColor: const Color.fromARGB(255, 211, 192, 191),
        ),
        backgroundColor: const Color(0xFFE3E8FF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello World",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20), // Space between text & image
              CachedNetworkImage(
                imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN2ko9LJLTbaPrcncnhZFDsvJh4D4Zz4mGwA&s",
                fit: BoxFit.fitWidth,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Text("Didnt work vaiya!")),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN2ko9LJLTbaPrcncnhZFDsvJh4D4Zz4mGwA&s")
            ],
          ),
        ),
      ),
    );
  }
}
