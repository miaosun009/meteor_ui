import 'package:flutter/material.dart';
import 'package:meteor_ui/meteor_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meteor UI"),
      ),
      body: SingleChildScrollView(
        child: UIColumn(
          mainAxisSize: MainAxisSize.min,
          children: [
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: [
                UIThrottleTap(
                  child: Container(
                    height: 40,
                    color: Colors.yellow,
                    child: UIColumn(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.access_alarm),
                        UIText(
                          '基础',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
