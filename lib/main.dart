import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Gallery")),
      body: Center(
          child: Row(
        children: [
          Column(children: [
            Image.asset('assets/mountain.jpeg', fit: BoxFit.cover),
            const Text(
              "Image from assets",
              style: TextStyle(fontSize: 32),
            )
          ]),
          Column(children: [
            Image.network(
                'https://images.unsplash.com/photo-1604537529428-15bcbeecfe4d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzMzcxODl8MXwxfHNlYXJjaHwxfHxtb3VudGFpbnxlbnwwfHx8fDE2ODI1MTUyMjY&ixlib=rb-4.0.3&q=80&w=400',
                fit: BoxFit.cover),
            const Text(
              "Image from url",
              style: TextStyle(fontSize: 32),
            )
          ])
        ],
      )),
    );
  }
}
