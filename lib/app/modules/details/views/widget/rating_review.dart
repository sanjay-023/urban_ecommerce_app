import 'package:ecommerceapp/app/modules/details/views/widget/rating_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewRating extends StatelessWidget {
  const ReviewRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 14, 10, 32),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "View Similar",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "4.0",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 56.sp)),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        )
                      ],
                    ),
                    Text(
                      "185 Verified Buyers",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.grey)),
                    )
                  ],
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container(height: 180.h, width: 1.w, color: Colors.white),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                      width: 180.w,
                      height: 160.h,
                      child: Column(
                        children: [
                          RatingProgress(),
                          RatingProgress(),
                          RatingProgress(),
                          RatingProgress(),
                          RatingProgress()
                        ],
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
