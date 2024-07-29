import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/widget/texts/header_title.dart';

class RegisterHeaderTitle extends StatelessWidget {
  const RegisterHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeaderTitle(title: StringConstants.registerHeaderTitle, subtitle: StringConstants.registerHeaderSubtitle,);
  }
}