import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuatom widget"),
      ),
      body: Container(
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              color: Colors.blue,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                    ),
                  ),
                ),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.yellow,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                    ),
                    title: Text('name'),
                    subtitle: Text('Mob no'),
                    trailing: Icon(Icons.delete),
                  ),
                ),
                itemCount: 10,
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              color: Colors.green,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    ),
                  ),
                ),
                itemCount: 15,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 200,
              color: Colors.red,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
