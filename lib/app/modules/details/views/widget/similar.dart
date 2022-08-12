import 'package:ecommerceapp/app/modules/home/views/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewSimilar extends StatelessWidget {
  const ViewSimilar({Key? key}) : super(key: key);

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Productcard(),
                  Productcard(),
                  Productcard(),
                  Productcard()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
