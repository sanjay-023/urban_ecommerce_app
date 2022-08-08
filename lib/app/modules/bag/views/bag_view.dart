import 'package:ecommerceapp/app/modules/bag/views/widget/bag_tile.dart';
import 'package:ecommerceapp/app/modules/bag/views/widget/place_order_button.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/bag_controller.dart';

class BagView extends GetView<BagController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonColors().bgColor,
        bottomNavigationBar: PlaceOrderButton(),
        appBar: AppBar(
          title: Text('Shopping Bag'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 14, 10, 32),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Text(
                    "1 ITEMS IN BAG",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Color.fromARGB(255, 205, 205, 205),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              BagTile()
            ],
          ),
        ));
  }
}
