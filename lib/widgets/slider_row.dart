import 'package:flutter/material.dart';

class SliderRow extends StatelessWidget {
  final String label;
  final double value;
  final Color color;
  final ValueChanged<double> onChanged;

  const SliderRow({
    super.key,
    required this.label,
    required this.value,
    required this.color,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label: ${value.toInt()}',
          style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Slider(
          value: value,
          min: 0,
          max: 255,
          activeColor: color,
          inactiveColor: color.withOpacity(0.3),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
