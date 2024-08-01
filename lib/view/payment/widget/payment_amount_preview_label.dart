import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';

class PaymentAmountPreviewLabel extends StatelessWidget {
  final String value;

  PaymentAmountPreviewLabel({required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.white100,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey, width: 1.0), 
        borderRadius: BorderRadius.circular(8.0), 
      ),
      child: Container(
        padding: EdgeInsets.all(16.0), // İçerik ile border arasındaki boşluk
        width: double.infinity, // Ekran genişliğine yayılmasını sağlar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tutar'),
            Text('$value TL'),
          ],
        ),
      ),
    );
  }
}
