import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({Key? key}) : super(key: key);

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
                Wrap(spacing: 8.w, children: [
                  Text(
                    "KETCH",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600)),
                  ),
                  Text(
                    "Evening Dress",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w300)),
                  )
                ]),
              ],
            ),
            Row(
              children: [
                Text(
                  "\u{20B9} 800",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "60% OFF",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Color.fromARGB(255, 253, 22, 6),
                          fontSize: 16.sp)),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Inclusive of all taxes",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(color: Color.fromARGB(255, 7, 181, 13))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
