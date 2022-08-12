import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingProgress extends StatelessWidget {
  const RatingProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "5",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold)),
        ),
        Icon(
          Icons.star,
          size: 15.sp,
          color: Colors.grey,
        ),
        Container(
          width: 110.w,
          child: LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey,
            color: Colors.amber,
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "80",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
