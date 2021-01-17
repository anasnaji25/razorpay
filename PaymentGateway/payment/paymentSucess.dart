import 'package:BusinessTracker/screens/subscription/PaymentGateway/payment/razorpay_payment.dart';

import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  final PaymentSuccessResponse response;
  var id;
  SuccessPage({
    @required this.response,
    @required this.id,
  });

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  bool isLoading;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Success"),
        backgroundColor: Colors.green,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 110,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      child: Text(
                        "Your payment is successful ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
