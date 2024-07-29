import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/widget/texts/header_title.dart';

class LoginHeaderTitle extends StatelessWidget {
  const LoginHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeaderTitle(title: StringConstants.loginHeaderTitle, subtitle: StringConstants.loginHeaderSubtitle);
  }
}