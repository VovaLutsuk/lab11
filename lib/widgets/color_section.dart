import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../color_provider.dart';
import 'slider_row.dart';

class ColorSection extends StatelessWidget {
  const ColorSection({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ColorProvider>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: provider.color,


          ),
        ),
        const SizedBox(height: 24),
        SliderRow(
          label: 'Red',
          value: provider.red.toDouble(),
          color: Colors.red,
          onChanged: (value) => context.read<ColorProvider>().updateRed(value.toInt()),
        ),
        SliderRow(
          label: 'Green',
          value: provider.green.toDouble(),
          color: Colors.green,
          onChanged: (value) => context.read<ColorProvider>().updateGreen(value.toInt()),
        ),
        SliderRow(
          label: 'Blue',
          value: provider.blue.toDouble(),
          color: Colors.blue,
          onChanged: (value) => context.read<ColorProvider>().updateBlue(value.toInt()),
        ),
      ],
    );
  }
}
