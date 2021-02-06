import 'package:flutter/material.dart';

class DottedSperator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      children: List.generate(27, (_) {
        return SizedBox(
          width: 5,
          height: 2,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.grey[300]),
          ),
        );
      }),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      direction: Axis.horizontal,
    );
  }
}
