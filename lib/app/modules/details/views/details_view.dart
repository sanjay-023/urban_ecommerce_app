import 'package:ecommerceapp/app/modules/bag/views/bag_view.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/details/views/widget/bottom_cart.dart';
import 'package:ecommerceapp/app/modules/details/views/widget/delivery_details.dart';
import 'package:ecommerceapp/app/modules/details/views/widget/product_title.dart';
import 'package:ecommerceapp/app/modules/details/views/widget/size_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Bottomcart(),
        backgroundColor: CommonColors().bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
            IconButton(
                onPressed: () {
                  Get.to(BagView());
                },
                icon: Icon(Icons.shopping_bag_outlined))
          ],
          title: Text('DetailsView'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("asset/image/Wdress_1.jpg"))),
              ),
              SizedBox(
                height: 15.h,
              ),
              ProductTitle(),
              SizedBox(
                height: 15.h,
              ),
              SizeSelect(),
              SizedBox(
                height: 15.h,
              ),
              DeliveryDetails()
            ],
          ),
        ));
  }
}
