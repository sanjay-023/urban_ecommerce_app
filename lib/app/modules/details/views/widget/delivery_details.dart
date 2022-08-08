import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryDetails extends StatelessWidget {
  const DeliveryDetails({Key? key}) : super(key: key);

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
                  "Delivery & Services for",
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
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: CommonColors().buttonColor)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add Delivery Address",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.white)),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18.h, left: 12.w, right: 12.w),
              child: Row(
                children: [
                  Icon(
                    Icons.delivery_dining,
                    color: Color.fromARGB(255, 183, 181, 181),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text("Get it by Fri,12 Aug",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color.fromARGB(255, 183, 181, 181),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500))),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18.h, left: 12.w, right: 12.w),
              child: Row(
                children: [
                  Icon(
                    Icons.compare_arrows,
                    color: Color.fromARGB(255, 183, 181, 181),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text("Easy 7 days return & exchange",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color.fromARGB(255, 183, 181, 181),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
