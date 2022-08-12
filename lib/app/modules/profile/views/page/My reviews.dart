import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';

class MyReviews extends StatefulWidget {
  const MyReviews({Key? key}) : super(key: key);

  @override
  State<MyReviews> createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors().bgColor,
      appBar: AppBar(
        title: Text("My Review"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
