import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: <Widget>[
                  Expanded(child: Divider(thickness: 1, color: Colors.black)),
                  Padding(
                    padding: CustomSizeConstants.low.paddingHorizontal,
                    child: Text(StringConstants.or),
                  ),
                  Expanded(child: Divider(thickness: 1, color: Colors.black)),
                ],
    );
    }
}