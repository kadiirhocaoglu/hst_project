import 'package:flutter/material.dart';
import 'package:hst_project/product/enums/image_constants.dart';

class IconLogoImage extends StatelessWidget {
  double  width;

  IconLogoImage({required  this.width});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: width,
    child: Image(image: AssetImage(IconConstants.hst_logo.toPng)),
    );
  }
}
