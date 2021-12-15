import 'package:flutter/material.dart';
import 'package:meteor_ui/meteor_ui.dart';
import 'package:meteor_ui_example/pages/color_palette_page.dart';
import 'package:meteor_ui_example/pages/home_page.dart';

void main() {
  runApp(const Bootstrap());
}

class Bootstrap extends StatefulWidget {
  const Bootstrap({Key? key}) : super(key: key);

  @override
  State<Bootstrap> createState() => _BootstrapState();
}

class _BootstrapState extends State<Bootstrap> {
  Map<String, WidgetBuilder> routes = {};

  @override
  void initState() {
    super.initState();
    routes = {
      "colorPalettePage": (_) => const ColorPalettePage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MeteorUI(
      theme: UIThemeData(
        baseFontSize: 14,
      ),
      child: MaterialApp(
        home: const HomePage(),
        routes: routes,
      ),
    );
  }
}
