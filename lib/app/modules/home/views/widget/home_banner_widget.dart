import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      color: Colors.black,
      child: Stack(
        children: [
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("asset/image/bg_1.png"))),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("asset/image/bg_2.png"))),
              )
            ],
            options: CarouselOptions(
                height: 500.h,
                aspectRatio: 9 / 16,
                viewportFraction: 1.4,
                autoPlay: true),
          ),
          Container(
              height: 500.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Color.fromARGB(181, 0, 0, 0),
                    Color.fromARGB(34, 0, 0, 0)
                  ]))),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 240.h,
                ),
                Text("Fashion",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          height: 1,
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold),
                    )),
                Text("Sale",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          height: 1,
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Check",
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: CommonColors().buttonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26.r)),
                        minimumSize: const Size(160, 38)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
