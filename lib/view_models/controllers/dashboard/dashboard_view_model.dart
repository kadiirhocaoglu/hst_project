
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{
    var index = 0.obs;

    void onChange(int index){
    this.index.value = index;
  }

  List<BottomNavigationBarItem> bottomItems(){
    return [
      BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Anasayfa"),
      BottomNavigationBarItem(icon: Icon(Icons.sell) , label: "Satış Yap"),
      BottomNavigationBarItem(icon: Icon(Icons.play_arrow) , label: "Ödeme Al"),
      BottomNavigationBarItem(icon: Icon(Icons.settings) , label: "Ayarlar"),
    ];
  }

}