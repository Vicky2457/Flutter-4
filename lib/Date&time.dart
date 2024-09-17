import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Current time:${DateFormat('yMMMMd').format(time)}',
                  style: const TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text(
                      'Current time',
                    ))
              ],
            ),
          ),
        ));
  }
}
