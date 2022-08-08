import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/shop/views/widget/men_page.dart';
import 'package:ecommerceapp/app/modules/shop/views/widget/women_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: CommonColors().bgColor,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Category'),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            centerTitle: true,
            bottom: TabBar(indicatorColor: CommonColors().buttonColor, tabs: [
              Tab(
                text: "Women",
              ),
              Tab(
                text: "Men",
              )
            ]),
          ),
          body: TabBarView(
            children: [WomenPage(), MenPage()],
          )),
    );
  }
}
