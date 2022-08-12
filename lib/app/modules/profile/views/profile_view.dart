import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:ecommerceapp/app/modules/profile/views/page/My%20reviews.dart';
import 'package:ecommerceapp/app/modules/profile/views/page/my_order.dart';
import 'package:ecommerceapp/app/modules/profile/views/page/settings_page.dart';
import 'package:ecommerceapp/app/modules/profile/views/page/shipping_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonColors().bgColor,
        appBar: AppBar(
          title: Text('My Profile'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 28.r,
              ),
              title: Text(
                "Sanjay",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.white, fontSize: 18.sp)),
              ),
              subtitle: Text(
                "sanjay@gmail.com",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(color: Color.fromARGB(255, 184, 183, 183))),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        if (index == 0) {
                          Get.to(MyOrders());
                        } else if (index == 1) {
                          Get.to(ShippingAddressPage());
                        } else if (index == 2) {
                          Get.to(MyReviews());
                        } else {
                          Get.to(SettingsPage());
                        }
                      },
                      title: Text(
                        profileController.settingsList[index],
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Color.fromARGB(59, 205, 204, 204),
                    );
                  },
                  itemCount: 4),
            )
          ],
        ));
  }
}
