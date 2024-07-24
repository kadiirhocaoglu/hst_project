import 'package:flutter/material.dart';
import 'package:hst_project/product/constants/color_constants.dart';
import 'package:hst_project/product/constants/string_constants.dart';
import 'package:hst_project/product/enums/image_constants.dart';
import 'package:hst_project/product/widget/decorations/custom_box_decoration_items.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        width: 350,
        decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), gradient: CustomBoxDecorationItems.getCardGradient()),
        
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 16,
                        right: 16,
                        child:Image.asset(
                          IconConstants.hst_logo.toPng,
                          height: 60,
                        ),
                      ),
                      const Positioned(
                        top: 16,
                        left: 16,
                        child: Text(StringConstants.dailyGero,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 32,
                        left: 16,
                        child: Row(
                          children: [
                            Text(StringConstants.fakeBalance,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(StringConstants.fakeBalancedot,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(StringConstants.typeMoney,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -240,
                        left: 16,
                        right: 16,
                        child:Image.asset(
                          ImageConstants.card_earth.toPng,
                          
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ));
  }
}
/**/