import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp Demo',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: Color(0xff008069),
                foregroundColor: Colors.white
            )
        ),
        home: const HomeScreen()
    );
  }
}
