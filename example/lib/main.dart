import 'package:flutter/material.dart';
import 'package:meteor_ui/meteor_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MeteorUI(
      theme: const UIThemeData(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Meteor UI'),
          ),
          body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: [
              UIThrottleTap(
                child: Container(
                  height: 40,
                  color: Colors.yellow,
                  child: UIColumn(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_alarm),
                      Text("基础"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
