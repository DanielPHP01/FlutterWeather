import 'package:flutter/material.dart';

class SunView extends StatelessWidget {
  const SunView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'pras/bissunhome.png',
          width: 284,
          height: 207,
        ),
      ],
    );
  }
}
