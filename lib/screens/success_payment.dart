import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Successpayment extends StatelessWidget {
  const Successpayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset('asset/images/payment.json'),
      ),
    );
  }
}
