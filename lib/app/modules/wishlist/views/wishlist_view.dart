import 'package:ecommerceapp/app/modules/bag/views/bag_view.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/home/views/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/wishlist_controller.dart';

class WishlistView extends GetView<WishlistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonColors().bgColor,
        appBar: AppBar(
          title: Text('Wishlist'),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(BagView());
                },
                icon: Icon(Icons.shopping_bag_outlined))
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 5.w,
                        maxCrossAxisExtent: 350.w,
                        childAspectRatio: 1 / 2),
                    itemBuilder: (context, index) {
                      return Productcard();
                    },
                    itemCount: 8,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
