import 'package:flutter/material.dart';

void main() {
  runApp(const McosystListenerApp());
}

class McosystListenerApp extends StatelessWidget {
  const McosystListenerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mcosyst Listener',
      theme: ThemeData.dark(),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mcosyst Listener')),
      body: const Center(
        child: Text(
          '🎧 Welcome to Mcosyst Listener',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
