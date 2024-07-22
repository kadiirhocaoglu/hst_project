import 'package:flutter/material.dart';

final class BoldTextButton extends TextButton {
  BoldTextButton({
    required super.onPressed,
    required super.child,
    super.key,
  }) : super(
          style: TextButton.styleFrom(
            elevation: 20,
          ),
        );
}
