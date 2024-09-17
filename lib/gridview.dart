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
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              titleSmall:
                  TextStyle(fontSize: 31, fontWeight: FontWeight.bold))),
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
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.orange,
      Colors.green,
      Colors.purple,
      Colors.grey,
      Colors.pink,
      Colors.yellow,
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          backgroundColor: Colors.orange,
        ),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: arrColors[index],
            );
          },
          itemCount: arrColors.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 8, mainAxisSpacing: 11),
        )

        //body: Column(
        //   children: [
        // GridView.count(
        //   crossAxisCount: 4,
        //   crossAxisSpacing: 11,
        //   mainAxisSpacing: 11,
        //   children: [
        //     Container(
        //       color: arrColors[0],
        //     ),
        //     Container(
        //       color: arrColors[1],
        //     ),
        //     Container(
        //       color: arrColors[2],
        //     ),
        //     Container(
        //       color: arrColors[3],
        //     ),
        //     Container(
        //       color: arrColors[4],
        //     ),
        //     Container(
        //       color: arrColors[5],
        //     ),
        //     Container(
        //       color: arrColors[6],
        //     ),
        //     Container(
        //       color: arrColors[7],
        //     ),
        //   ],
        // ),
        // Container(
        //   height: 200,
        //   child: GridView.extent(
        //     maxCrossAxisExtent: 50,
        //     crossAxisSpacing: 11,
        //     mainAxisSpacing: 11,
        //     children: [
        //       Container(
        //         color: arrColors[0],
        //       ),
        //       Container(
        //         color: arrColors[2],
        //       ),
        //       Container(
        //         color: arrColors[1],
        //       ),
        //       Container(
        //         color: arrColors[3],
        //       ),
        //       Container(
        //         color: arrColors[4],
        //       ),
        //       Container(
        //         color: arrColors[5],
        //       ),
        //       Container(
        //         color: arrColors[6],
        //       ),
        //       Container(
        //         color: arrColors[7],
        //       ),
        //     ],
        //   ),
        // )
        // ],
        // )
        );
  }
}
