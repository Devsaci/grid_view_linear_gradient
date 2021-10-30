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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget info(String title, Color color) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: color),
      child: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("54. Grid View & Linear Gradient"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: GridView(
          children: [
            info("title", Colors.blue),
            info("title", Colors.green),
            info("title", Colors.lightGreen),
            info("title", Colors.orange),
            info("title", Colors.deepPurple),
            info("title", Colors.black87),
            info("title", Colors.redAccent),
            info("title", Colors.orangeAccent),
          ],
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
