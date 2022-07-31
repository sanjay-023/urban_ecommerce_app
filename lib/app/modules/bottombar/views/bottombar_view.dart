import 'package:bottom_bar/bottom_bar.dart';
import 'package:ecommerceapp/app/modules/bag/views/bag_view.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/home/views/home_view.dart';
import 'package:ecommerceapp/app/modules/profile/views/profile_view.dart';
import 'package:ecommerceapp/app/modules/shop/views/shop_view.dart';
import 'package:ecommerceapp/app/modules/wishlist/views/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  final bottomBarController = Get.put(BottombarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: bottomBarController.pageController,
        children: [
          HomeView(),
          ShopView(),
          BagView(),
          WishlistView(),
          ProfileView()
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          bottomBarController.changeIndex(index);
        },
      ),
      bottomNavigationBar:
          GetBuilder<BottombarController>(builder: (controller) {
        return BottomBar(
          backgroundColor: CommonColors().bgColor,
          selectedIndex: bottomBarController.currentPage,
          onTap: (int index) {
            bottomBarController.pageController.jumpToPage(index);
            bottomBarController.changeIndex(index);
          },
          items: <BottomBarItem>[
            BottomBarItem(
              icon: Icon(
                Icons.home,
                size: 24,
              ),
              title: Text('Home'),
              activeColor: CommonColors().buttonColor,
            ),
            BottomBarItem(
              icon: FaIcon(FontAwesomeIcons.cartArrowDown),
              title: Text('Shop'),
              activeColor: CommonColors().buttonColor,
            ),
            BottomBarItem(
              icon: FaIcon(
                FontAwesomeIcons.bagShopping,
                size: 24,
              ),
              title: Text('Bag'),
              activeColor: CommonColors().buttonColor,
            ),
            BottomBarItem(
              icon: Icon(
                Icons.favorite,
                size: 24,
              ),
              title: Text('Wishlist'),
              activeColor: CommonColors().buttonColor,
            ),
            BottomBarItem(
              icon: FaIcon(
                FontAwesomeIcons.userAstronaut,
                size: 24,
              ),
              title: Text('Profile'),
              activeColor: CommonColors().buttonColor,
            ),
          ],
        );
      }),
    );
  }
}
