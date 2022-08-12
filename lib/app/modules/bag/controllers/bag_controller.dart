import 'package:ecommerceapp/app/modules/bag/views/widget/success_page.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class BagController extends GetxController {
  var razorPay = Razorpay();

  @override
  void onInit() {
    razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    super.onInit();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("sucess");
    Get.to(SuccessPage());
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("error");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
  }

  List qtyValues = [
    '1',
    '2',
    '3',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  String qtyText = '1';

  changeQty(value) {
    qtyText = value;
    update();
  }

  makePayment() {
    var options = {
      'key': 'rzp_test_74z731ctSTVKY7',
      'amount': '80000',
      'name': 'sanjay',
      'description': 'Ketch Evening dress',
      'timeout': 300,
      'prefill': {'contact': '7907382574', 'email': 'test@razorpay.com'}
    };
    razorPay.open(options);
  }
}
