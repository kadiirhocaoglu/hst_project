import 'package:flutter/material.dart';

  import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';

class CustomStartButton extends StatefulWidget {
  CustomStartButton({super.key,
  required String title}): _title = title;

  String _title;
  @override
  _CustomStartButtonState createState() => _CustomStartButtonState();
}

class _CustomStartButtonState extends State<CustomStartButton> {
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
            borderRadius: BorderRadius.all(CustomSizeConstants.verylow.radiusCircular),
            color: ColorConstants.white100
          ),
          child: Center(
            child: Text(
                widget._title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: ColorConstants.darkness, 
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
