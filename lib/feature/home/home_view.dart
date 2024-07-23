import 'package:flutter/material.dart';
import 'package:hst_project/product/widget/appbar/custom_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar.getCustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height / 4,
              width: size.width,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("TL | TOPLAM BAKİYE", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("2398", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),),
                      Text(",", style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),),
                      Text("99", style: TextStyle(fontSize: 38, fontWeight: FontWeight.w300),),
                    ],
                  )
                ],),
              ),
            ),
            Text("Son İşlemler", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400), textAlign: TextAlign.start),
            Expanded(
              child: Card( 
                color: Colors.grey,
                child: ListView(
                      children: [
                        SizedBox(child: Text("data",), height: 100, width: size.width,),
                        SizedBox(child: Text("data"), height: 100, width: size.width,),
                        SizedBox(child: Text("data"), height: 100, width: size.width,),
                    ],),
              )
            )
          ],
        ),
      ),
    );
  }
}