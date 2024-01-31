import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  const PopularCard({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(255, 250, 245, 245)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.flight,
                    size: 15,
                  ),
                  Text(
                    text,
                    style: GoogleFonts.poppins(fontSize: 10),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 17,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow),
                  child: Center(
                    child: Text(
                      'Book Now',
                      style: GoogleFonts.poppins(fontSize: 10),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
