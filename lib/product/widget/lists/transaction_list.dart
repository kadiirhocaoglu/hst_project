import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/custom_size_constants.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children:  [
          Padding(
            padding: CustomSizeConstants.medium.paddingHorizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(StringConstants.today),
                TextButton(onPressed:(){} , child: Text("Tüm İşlemler"))
              ],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text("Yapı Kredi AŞ."),
            subtitle: Text("Satış", style: TextStyle(backgroundColor: Colors.green),),
            trailing: Text(
              "+ ${StringConstants.fakeBalance+StringConstants.fakeBalancedot}",
            ),
          ),
          ListTile(
            leading: Icon(Icons.remove_circle_outline),
            title: Text("Akbank AŞ."),
            subtitle: Text("İptal", style: TextStyle(backgroundColor: Colors.red)),
            trailing: Text(
              "+ ${StringConstants.fakeBalance+StringConstants.fakeBalancedot}",
            ),
          ),
        ],
      ),
    );
  }
}
