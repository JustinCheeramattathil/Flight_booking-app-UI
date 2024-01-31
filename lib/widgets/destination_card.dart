import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class DestinationCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  const DestinationCard({
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
            borderRadius: BorderRadius.circular(15), color: Colors.white),
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
                    color: Colors.green),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(IconlyBold.location),
                  Text(
                    text,
                    style: GoogleFonts.poppins(fontSize: 10),
                  ),
                  const Icon(Icons.favorite_border_outlined)
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 212, 193, 20),
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 212, 193, 20),
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 212, 193, 20),
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 212, 193, 20),
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
