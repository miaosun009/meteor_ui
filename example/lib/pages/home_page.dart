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
    final colors = UITheme.of(context).colors;
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
                  onTap: () {
                    Navigator.of(context).pushNamed('colorPalettePage');
                  },
                  child: Container(
                    height: 40,
                    color: UIColorPaletteScheme.grey.shade1,
                    child: UIColumn(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.color_lens),
                        SizedBox(height: 5),
                        UIText(
                          '调色板',
                        ),
                      ],
                    ),
                  ),
                ),
                UIThrottleTap(
                  child: Container(
                    height: 40,
                    color: UIColorPaletteScheme.grey.shade2,
                    child: UIColumn(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.title,
                          color: colors.text.minor,
                        ),
                        SizedBox(height: 5),
                        UIText(
                          '排版',
                          color: colors.text.color,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
