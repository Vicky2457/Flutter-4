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
        body: Column(
          children: [
            Text(
              'Select Date',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? datepicked = await showDatePicker(
                      context: context,
                      firstDate: DateTime(
                        2021,
                      ),
                      lastDate: DateTime(2023));
                  if (datepicked != null) {
                    print(
                        'date selected : ${datepicked.day}-${datepicked.month}-${datepicked.year}');
                  }
                },
                child: Text('show')),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input);
                  if (pickedTime != null) {
                    print(
                        'Time selected ${pickedTime.hour}-${pickedTime.minute}}');
                  }
                },
                child: Text('Time selected'))
          ],
        ));
  }
}
