import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddDeliveryAddress extends StatelessWidget {
  const AddDeliveryAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors().bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Add New Address"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Contact Details",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp)),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              color: Color.fromARGB(255, 14, 10, 32),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    AddressTextbox(),
                    SizedBox(
                      height: 32.h,
                    ),
                    AddressTextbox()
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                children: [
                  Text(
                    "Address",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp)),
                  ),
                ],
              ),
            ),
            Container(
              color: Color.fromARGB(255, 14, 10, 32),
              child: Column(
                children: [AddDeliveryAddress()],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddressTextbox extends StatelessWidget {
  const AddressTextbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          // filled: true,
          // fillColor: Color.fromARGB(255, 3, 3, 12),
          hintText: "Name*",
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 183, 12, 69))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 183, 12, 69))),
          hintStyle: TextStyle(color: Color.fromARGB(168, 213, 213, 213)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 183, 12, 69)))),
    );
  }
}
