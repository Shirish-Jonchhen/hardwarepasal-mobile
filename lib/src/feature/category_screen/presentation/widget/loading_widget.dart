import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 0.3 * scHeight,
        ),
        Center(
          child: CircularProgressIndicator(),
        ),
        SizedBox(
          height: 0.03 * scHeight,
        ),
        // Add more widgets here if needed
      ],
    );
  }
}
