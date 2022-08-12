import 'package:ecommerceapp/app/modules/bag/controllers/bag_controller.dart';
import 'package:ecommerceapp/app/modules/bottombar/views/bottombar_view.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SuccessPage extends StatelessWidget {
  SuccessPage({Key? key}) : super(key: key);
  final bagController = Get.put(BagController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonColors().bgColor,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          LottieBuilder.asset(
            "asset/image/succes.json",
            repeat: false,
          ),
          Text(
            "SUCCESS !",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600)),
          ),
          Text(
            "Your order will be delivered soon.",
            style:
                GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white)),
          ),
          Text(
            " Thank you for choosing us.",
            style:
                GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white)),
          ),
          SizedBox(
            height: 25.h,
          ),
          ElevatedButton(
              onPressed: () {
                Get.offAll(BottombarView());
              },
              child: Text(
                "Continue Shopping",
                style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  primary: CommonColors().buttonColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.r)),
                  minimumSize: const Size(190, 40)))
        ]));
  }
}
