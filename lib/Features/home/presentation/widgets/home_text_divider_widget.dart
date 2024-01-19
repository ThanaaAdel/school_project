import 'package:flutter/material.dart';
import 'package:school/features/home/presentation/widgets/home_rectangle_curve.dart';
import 'package:school/core/utils/gaps.dart';

class HomeTextDivider extends StatelessWidget {
  const HomeTextDivider({
    super.key,
    required this.rowText,
  });
  final String rowText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HomeRectangleCurve(),
        Gaps.hGap16,
        Text(
          rowText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
