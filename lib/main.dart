import 'package:flare/flare.dart';
import 'package:flutter/material.dart';
import 'package:flare/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.teal),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FlareController controller;
  FlutterActorArtboard artboard;
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
      body: Stack(
        children: <Widget>[
          Card(
            child: Container(
              height: double.infinity,
            ),
            color: Theme.of(context).accentColor,
          ),
          FlareActor(
            "assets/PokeBall.flr",
            controller: controller,
            alignment: Alignment.topCenter,
            animation: "Move",
          ),
          FlareActor(
            "assets/PokeBall.flr",
            controller: controller,
            animation: "Move",
          ),
          FlareActor(
            "assets/PokeBall.flr",
            controller: controller,
            alignment: Alignment.bottomCenter,
            animation: "Move",
          ),
        ],
      ),
    );
  }
}
