import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/home/views/widget/home_banner_widget.dart';
import 'package:ecommerceapp/app/modules/home/views/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors().bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 36.sp)),
                      ),
                      Text(
                        "You've never seen it before",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Color.fromARGB(255, 109, 108, 108),
                                fontSize: 12.sp)),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.grey)),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [Productcard(), Productcard(), Productcard()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
