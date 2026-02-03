import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBlueTheme = true;

  
  final List<String> quotes = [
    "Believe in yourself.",
    "Small progress is still progress.",
    "Rome wasnt built in one day" ,
    "Shrimp that fell asleep get taken by the current"
  ];

  String currentQuote = "Believe in yourself.";
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Team Backseaters'),
        backgroundColor: isBlueTheme ? Colors.blue : Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ProfileCard(),
feature/icon-gallery
          const SizedBox(height: 16),
          const IconGallery(),
          const SizedBox(height: 24),

          const SizedBox(height: 20),

          // ✅ Quote display
          Text(
            currentQuote,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 10),

          // ✅ Button to rotate quotes
          ElevatedButton(
            onPressed: () {
              setState(() {
                currentQuote = quotes[random.nextInt(quotes.length)];
              });
            },
            child: const Text('New Quote'),
          ),

          const SizedBox(height: 20),

          // ✅ Theme switch button
master
          ElevatedButton(
            onPressed: () {
              setState(() {
                isBlueTheme = !isBlueTheme;
              });
            },
            child: const Text('Switch Theme'),
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.person, size: 50, color: Colors.blue),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Uddhav Cota',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Major: Computer Science',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IconGallery extends StatelessWidget {
  const IconGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.music_note, size: 32, color: Colors.blue),
        SizedBox(width: 16),
        Icon(Icons.sports_basketball, size: 32, color: Colors.orange),
        SizedBox(width: 16),
        Icon(Icons.code, size: 32, color: Colors.green),
        SizedBox(width: 16),
        Icon(Icons.movie, size: 32, color: Colors.red),
        SizedBox(width: 16),
        Icon(Icons.travel_explore, size: 32, color: Colors.purple),
      ],
    );
  }
}
