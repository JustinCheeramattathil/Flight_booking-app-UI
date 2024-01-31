import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const SplashButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 4, 34, 202),
                Color.fromARGB(255, 177, 65, 241),
              ])),
          child:  Center(
              child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
