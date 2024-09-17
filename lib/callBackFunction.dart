import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});
  @override
  State<DashBoardScreen> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen> {
  Callback() {
    print('clicked!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          backgroundColor: Colors.orange,
        ),
        body: ElevatedButton(
          child: Text('click me!!'),
          onPressed: Callback(),
        ));
  }
}
