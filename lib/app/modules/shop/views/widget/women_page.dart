import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/full/views/full_view.dart';
import 'package:ecommerceapp/app/modules/shop/views/widget/category_offer_banner.dart';
import 'package:ecommerceapp/app/modules/shop/views/widget/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WomenPage extends StatelessWidget {
  const WomenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors().bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CategoryOffer(),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(
                    appbarTitle: "Womens Kurta",
                  ));
                },
                child: CategoryTile(
                  tileName: "Kurtas",
                  imgUrl: "asset/image/women_kurta.jpg",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Womens Jeans"));
                },
                child: CategoryTile(
                  tileName: "Jeans",
                  imgUrl: "asset/image/women_jeans.jpg",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Womens Tops & Tees"));
                },
                child: CategoryTile(
                  tileName: "Tops & Tees",
                  imgUrl: "asset/image/women_tees.jpg",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Sarees"));
                },
                child: CategoryTile(
                  tileName: "Sarees",
                  imgUrl: "asset/image/women_saree.jpg",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(FullView(appbarTitle: "Womens Sports"));
                },
                child: CategoryTile(
                  tileName: "Sports",
                  imgUrl: "asset/image/women_sports.jpg",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
