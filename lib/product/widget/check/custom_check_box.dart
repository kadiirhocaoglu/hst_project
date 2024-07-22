import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/widget/bottomsheet/custom_bottom_sheet.dart';


class SignupCheckBox extends StatefulWidget {
  @override
  _SignupCheckBoxState createState() => _SignupCheckBoxState();
}

class _SignupCheckBoxState extends State<SignupCheckBox> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () async {
            value = await CustomBottomSheet.show(context);
            setState(() {}); 
          },
          icon: Icon(
            value ?? false ? Icons.square : Icons.square_outlined,
          ),
        ),
        Expanded(
          child: Text(
            StringConstants.signupTermsText,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
