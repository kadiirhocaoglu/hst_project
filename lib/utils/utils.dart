import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static void snackBar(BuildContext context, String title, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$title: $message'),
      ),
    );
  }
}
/*
    static toastMessage(String message){
      Fluttertoast.showToast(
          msg: message ,
        backgroundColor: AppColor.blackColor ,
        textColor: AppColor.whiteColor,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_LONG,


      );
    }


    static toastMessageCenter(String message){
      Fluttertoast.showToast(
        msg: message ,
        backgroundColor: AppColor.blackColor ,
        gravity: ToastGravity.CENTER,
        toastLength: Toast.LENGTH_LONG,
        textColor: AppColor.whiteColor,
      );
    }
*/
   
    