import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTile extends StatelessWidget {
  final String tileName;
  final String imgUrl;

  const CategoryTile({Key? key, required this.tileName, required this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14.h),
      child: Container(
        height: 100.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
            color: Color.fromARGB(162, 37, 37, 37),
            borderRadius: BorderRadius.circular(6.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                tileName,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(6.r),
              child: Container(
                height: 100.h,
                width: 160.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(imgUrl))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
