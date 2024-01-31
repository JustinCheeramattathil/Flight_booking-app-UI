import 'package:flight_booking/screens/success_payment.dart';
import 'package:flight_booking/services/animation_provider.dart';
import 'package:flight_booking/widgets/splash_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final expiryController = TextEditingController();
  final cvvController = TextEditingController();
  PaymentScreen({super.key});
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Successpayment(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Provider.of<AnimationProvider>(context, listen: false).toggleVisibility();
    });
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 232, 250),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 232, 250),
        title: Text(
          'Payments',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 30),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.payment,
                            color: Color.fromARGB(255, 112, 87, 160),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Credit/Debit Card',
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 112, 87, 160),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Card holder name',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 112, 87, 160),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            hintText: 'Justin Thomas',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 112, 87, 160),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Card number',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 112, 87, 160),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: numberController,
                          decoration: const InputDecoration(
                            hintText: '1234  5678  9876  5432',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 112, 87, 160),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Expiry Date',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 112, 87, 160),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 75,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'CVV',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 112, 87, 160),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              controller: expiryController,
                              decoration: const InputDecoration(
                                hintText: '01/27',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 112, 87, 160),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            controller: cvvController,
                            decoration: const InputDecoration(
                              hintText: '...',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 112, 87, 160),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            SplashButton(
              onTap: () {
                nameController.clear();
                numberController.clear();
                expiryController.clear();
                cvvController.clear();
                Navigator.of(context).pushReplacement(_createRoute());
              },
              text: 'Pay now',
            )
          ],
        ),
      ),
    );
  }
}
