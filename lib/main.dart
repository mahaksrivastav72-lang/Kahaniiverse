
import 'package:flutter/material.dart';

void main() {
  runApp(const KahaniiverseApp());
}

class KahaniiverseApp extends StatelessWidget {
  const KahaniiverseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kahaniiverse',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF7957E8),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF),
      appBar: AppBar(
        title: const Text(
          'Kahaniiverse ✨',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFFAF8FF),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Welcome to Kahaniiverse ❤️',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Your imagination, your universe.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 25),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF7957E8),
                  Color(0xFFB58AEF),
                ],
              ),
              borderRadius: BorderRadius.circular(22),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Your Own Story',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Turn your imagination into beautiful stories.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Choose Your Genre',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              '👻 Horror',
              '❤️ Romance',
              '🔪 Thriller',
              '🧚 Fantasy',
              '🛕 Mythology',
              '😂 Comedy',
            ].map((genre) {
              return Chip(
                label: Text(genre),
                backgroundColor: const Color(0xFFECE5FF),
              );
            }).toList(),
          ),
          const SizedBox(height: 30),
          const Text(
            'Your Story Studio',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Amazing stories are waiting to be created!',
          ),
        ],
      ),
    );
  }
}
