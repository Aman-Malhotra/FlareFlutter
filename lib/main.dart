import 'package:flutter/material.dart';
import 'package:flare/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPaused = false;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample for Flare"),
        centerTitle: true,
      ),
      body: FlareActor(
        "assets/PokeBall.flr",
        animation: "Move",
        isPaused: isPaused,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        mini: true,
        child: (isPaused) ? Icon(Icons.play_arrow) : Icon(Icons.pause),
      ),
    );
  }
}
