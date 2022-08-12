import 'package:ecommerceapp/app/modules/common/common_color.dart';
import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors().bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("My Orders"),
        elevation: 0,
      ),
    );
  }
}
