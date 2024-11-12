import 'package:flutter/material.dart';
import 'package:pelarian/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pelarian',
      theme: ThemeData(
        // Menggunakan tema gelap yang sesuai dengan konsep sporty.
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
          brightness: Brightness.dark, // Set tema ke dark mode.
        ).copyWith(
          primary: Colors.black,
          secondary: Colors.tealAccent[200],
        ),
        scaffoldBackgroundColor: Colors.black, // Latar belakang hitam untuk tampilan utama.
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
