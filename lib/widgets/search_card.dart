import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String location;
  final String time;
  final VoidCallback onTap;
  SearchCard(
      {super.key,
      required this.onTap,
      required this.imageUrl,
      required this.text,
      required this.location,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageUrl), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      location,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      time,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
