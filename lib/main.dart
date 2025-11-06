import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RenderFlex Overflow Demo'),
          backgroundColor: Colors.blue,
        ),
        body: const RenderFlexErrorDemo(),
      ),
    );
  }
}

class RenderFlexErrorDemo extends StatelessWidget {
  const RenderFlexErrorDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'This demo intentionally creates a RenderFlex overflow error:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            
            // This Row will cause a RenderFlex overflow error
            // because the combined width of its children exceeds the screen width
            Row(
              children: [
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Box 1', style: TextStyle(color: Colors.white))),
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.green,
                  child: const Center(child: Text('Box 2', style: TextStyle(color: Colors.white))),
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: const Center(child: Text('Box 3', style: TextStyle(color: Colors.white))),
                ),
                Container(
                  width: 200,
                  height: 100,
                  color: Colors.orange,
                  child: const Center(child: Text('Box 4', style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
