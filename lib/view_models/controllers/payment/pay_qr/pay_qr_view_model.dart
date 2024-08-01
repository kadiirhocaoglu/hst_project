import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PayQRController extends GetxController {
  var isLoading = false.obs;
    dynamic? receivedValue;


  void startPaymentProcess() {
    // Start showing the progress indicator
    isLoading.value = true;

    // Hide the progress indicator after 30 seconds
    Timer(Duration(seconds: 30), () {
      isLoading.value = false;
    });
  }
  }