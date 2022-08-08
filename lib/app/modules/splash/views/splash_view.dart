import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonColors().bgColor,
        body: Center(
            child: Image(image: AssetImage("asset/image/urban_logo.png"))));
  }
}
