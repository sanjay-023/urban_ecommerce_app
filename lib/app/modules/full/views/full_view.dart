import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/full/views/widget/filter_widget.dart';
import 'package:ecommerceapp/app/modules/home/views/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/full_controller.dart';

class FullView extends GetView<FullController> {
  final String appbarTitle;

  FullView({required this.appbarTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonColors().bgColor,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
          ],
          title: Text(appbarTitle),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 400,
              child: Column(
                children: [
                  FilterWidget(),
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
                    itemCount: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
