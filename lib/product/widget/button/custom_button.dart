  import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';

class CustomButton extends StatefulWidget {
  CustomButton({super.key,
  required String title}): _title = title;

  String _title;
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
        });
      },
      
      child: SizedBox(
        height: CustomSizeConstants.normalButtonHeight.value,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient:CustomBoxDecorationItems.getLinearGradient(),
            borderRadius: BorderRadius.all(CustomSizeConstants.verylow.radiusCircular),
          ),
          child: Center(
            child: Text(
                widget._title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: ColorConstants.zambak, 
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
