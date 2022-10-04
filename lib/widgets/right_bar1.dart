import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:flutter/material.dart';

class RightBar1 extends StatelessWidget {
  final double barWidth;

  const RightBar1({super.key, required this.barWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: TitleHexColor),
        )
      ],
    );
  }
}
