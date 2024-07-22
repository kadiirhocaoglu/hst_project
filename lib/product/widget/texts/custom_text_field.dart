import 'package:flutter/material.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';

final class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required String title,
    required TextEditingController controller,
    bool obscureText = false,
    TextInputType keytype = TextInputType.name
    
  })
  : _title = title,
    _controller = controller,
    _obscureText = obscureText,
    _keytype = keytype;

  final String _title;
  final TextEditingController _controller;
  final bool _obscureText;
  final TextInputType _keytype;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: CustomSizeConstants.verylow.value),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
            padding: EdgeInsets.only(left: CustomSizeConstants.low.value),
            child: Text(_title),
              ),
            TextField(
              controller: _controller,
              keyboardType: _keytype,
              decoration: CustomBoxDecorationItems.getInputDecoration(),
                obscureText: _obscureText
              ),
              
            ],
          )
        );
  }
}
