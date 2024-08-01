import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/utils/extensions/double_extension.dart';

class PaymentsButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;
  final Color buttonColor; // Background color of the button
  final Color textColor;   // Color of the text
  final Color borderColor; // Border color of the button

  PaymentsButtonWidget({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    this.buttonColor = Colors.white, // Default background color
    this.textColor = Colors.black,   // Default text color
    this.borderColor = Colors.grey,  // Default border color
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: CustomSizeConstants.low.padding,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Icon(icon, size: 15.0.wp),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: textColor)),
                    Text(subtitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: textColor)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
