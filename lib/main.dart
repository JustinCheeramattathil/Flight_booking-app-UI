import 'package:flight_booking/screens/home_screen.dart';
import 'package:flight_booking/screens/payment_screen.dart';
import 'package:flight_booking/screens/search_screen.dart';
import 'package:flight_booking/screens/splash_screen.dart';
import 'package:flight_booking/services/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flight Booking',
        home: const SplashScreen(),
        routes: {
          '/home': (context) => const HomeScreen(),
          '/search': (context) => SearchScreen(),
          '/payment':(context) => PaymentScreen(),
        },
      ),
    );
  }
}
