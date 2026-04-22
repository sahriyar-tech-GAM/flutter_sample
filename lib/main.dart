import 'package:flutter/material.dart';
import 'a1_task1.dart';
import 'a1_task2.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 24, 183, 183)),
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
      appBar: AppBar(
        title: const Text(
          'Flutter Assignment 6',
          style: TextStyle(color: Color.fromARGB(255, 250, 250, 250), fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 8, 207, 187),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.person),
              label: const Text('Task 1: Personal Info'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Task1Page()),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.text_fields),
              label: const Text('Task 2: Styled Text'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 72, 16, 169),
                foregroundColor: const Color.fromARGB(255, 243, 241, 241),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Task2Page()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}