import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  CustomTextButton({required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: ColorConstants.zambak, 
        backgroundColor: Colors.transparent, 
        textStyle: Theme.of(context).textTheme.headlineSmall,
      ),
      child: Text(title),
    );
  }
}