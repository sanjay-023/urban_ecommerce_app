import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/full/views/full_view.dart';
import 'package:ecommerceapp/app/modules/shop/views/widget/category_offer_banner.dart';
import 'package:ecommerceapp/app/modules/shop/views/widget/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MenPage extends StatelessWidget {
  const MenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors().bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              CategoryOffer(),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Mens Shirts"));
                },
                child: CategoryTile(
                  tileName: "Shirts",
                  imgUrl: "asset/image/mens_shirt.jpg",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Mens T-Shirts"));
                },
                child: CategoryTile(
                  tileName: "T-Shirts",
                  imgUrl: "asset/image/mens_tshirt.jpg",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Mens Jeans"));
                },
                child: CategoryTile(
                  tileName: "Jeans",
                  imgUrl: "asset/image/mens_jeans.jpg",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Mens Trousers"));
                },
                child: CategoryTile(
                  tileName: "Trousers",
                  imgUrl: "asset/image/mens_trousers.jpg",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Mens Sports"));
                },
                child: CategoryTile(
                  tileName: "Sports",
                  imgUrl: "asset/image/mens_sports.jpg",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
