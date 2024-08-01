import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hst_project/view/sales/widget/sales_calc_button_widget.dart';
import 'package:hst_project/view/sales/widget/sales_delete_button_widget.dart';
import 'package:hst_project/view_models/controllers/sales/sales_view_model.dart';

class SalesNumericKeyboard extends GetView<SalesController> {
  final MainAxisAlignment mainAxisAlignment;

  const SalesNumericKeyboard({
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          ButtonBar(
            alignment: mainAxisAlignment,
            children: <Widget>[
              SalesCalcButtonWidget(value: '1'),
              SalesCalcButtonWidget(value: '2'),
              SalesCalcButtonWidget(value: '3'),
            ],
          ),
          ButtonBar(
            alignment: mainAxisAlignment,
            children: <Widget>[
              SalesCalcButtonWidget(value: '4'),
              SalesCalcButtonWidget(value: '5'),
              SalesCalcButtonWidget(value: '6'),
            ],
          ),
          ButtonBar(
            alignment: mainAxisAlignment,
            children: <Widget>[
              SalesCalcButtonWidget(value: '7'),
              SalesCalcButtonWidget(value: '8'),
              SalesCalcButtonWidget(value: '9'),
            ],
          ),
           ButtonBar(
            alignment: mainAxisAlignment,
            children: <Widget>[
              SalesCalcButtonWidget(value: ','),
              SalesCalcButtonWidget(value: '0'),
              SalesDeleteButtonWidget()
            ],
          ),
        ],
      ),
    );
  }

  
}
