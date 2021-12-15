import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meteor_ui/meteor_ui.dart';

class ColorPalettePage extends StatelessWidget {
  const ColorPalettePage({Key? key}) : super(key: key);

  Map<String, UIColorPalette> get colorPalettes {
    return {
      "蓝色": UIColorPaletteScheme.blue,
      "绿色": UIColorPaletteScheme.green,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UITextBasics("调色板"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: UIColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...colorPalettes.entries
                  .map(
                    (item) => UIColumn(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UITitle(item.key, heading: UITitleHeading.h6),
                        const SizedBox(height: 12),
                        GridView(
                          shrinkWrap: true,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
                          children: item.value.values
                              .asMap()
                              .keys
                              .map(
                                (i) => Container(
                                  color: item.value.values[i],
                                  child: Center(
                                    child: UIText('$i'),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
