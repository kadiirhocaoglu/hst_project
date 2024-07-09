import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WawyText extends StatelessWidget {
  const WawyText({
    super.key,
    required this.title,
    required this.description
  });

  final String title;
  final String description;
  
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(title),
                WavyAnimatedText(description),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            );
  }

}

