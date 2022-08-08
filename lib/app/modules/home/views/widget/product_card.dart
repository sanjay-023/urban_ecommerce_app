import 'package:ecommerceapp/app/modules/details/views/details_view.dart';
import 'package:ecommerceapp/app/modules/home/views/widget/rating_star.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Productcard extends StatelessWidget {
  const Productcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          Get.to(DetailsView());
        },
        child: Container(
          height: 380.h,
          width: 180.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 180.w,
                height: 250.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("asset/image/Wdress_1.jpg")),
                    borderRadius: BorderRadius.circular(12.r)),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: RatingStar()),
              Text(
                "Dorothy perkins",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.white, fontSize: 12, height: 0.5)),
              ),
              Text(
                "Evening dress",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.white,
                        height: 2,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500)),
              ),
              Text(
                "\u{20B9} 800",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
