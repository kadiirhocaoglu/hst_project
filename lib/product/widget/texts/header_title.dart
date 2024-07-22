import 'package:flutter/material.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';


final class CustomHeaderTitle extends StatelessWidget {
    CustomHeaderTitle({super.key, required String title, required String subtitle}):
     _title = title,
     _subtitle = subtitle;

    
    final String _title;
    final String _subtitle;

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: CustomSizeConstants.low.paddingVertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_title, style: Theme.of(context).textTheme.titleMedium,),
            Padding(
              padding: EdgeInsets.only(top: CustomSizeConstants.verylow.value),
              child: Text(_subtitle, style: Theme.of(context).textTheme.titleSmall),
            )
          ],
        ),
      );
    }
  }