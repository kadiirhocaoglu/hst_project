import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:hst_project/product/widget/button/custom_button.dart';
import 'package:hst_project/product/widget/button/custom_start_button.dart';
import 'package:hst_project/product/widget/button/custom_text_button.dart';
import 'package:hst_project/product/widget/button/custom_start_text_buttonn.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';
import 'package:hst_project/product/widget/texts/custom_text_field.dart';
import 'package:hst_project/product/widget/texts/custom_title_logo.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: CustomSizeConstants.veryhigh.paddingHorizontal,
        //TODO: maybe size constant but dont know context put
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            gradient: CustomBoxDecorationItems.getLinearGradient()),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  //TODO: will fix
                  width: size.width * 0.3,
                  child: Image(image: AssetImage(IconConstants.hst_logo.toPng)),
                ),
                Column(
                  children: [
                    CustomStartButton(title: StringConstants.signIn),
                    CustomTextButton(
                        onPressed: () {}, title: StringConstants.register),
                  ],
                ),
                const CustomTitleLogo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
