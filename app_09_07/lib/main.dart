import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Aufgabe 1', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Hello App Akademie!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 30), // Spacing below the title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Button A
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      // Action for Button A
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[700], // Darker red
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'A',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                // Button B
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      // Action for Button B
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[700], // Darker green
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'B',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                // Button C
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      // Action for Button C
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700], // Darker blue
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50), // Spacing below buttons
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.sentiment_neutral, // A smiley face icon
                  size: 80,
                  color: Colors.black87,
                ),
                Icon(
                  Icons.sentiment_neutral, // Another smiley face icon
                  size: 80,
                  color: Colors.black87,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
