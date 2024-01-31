import 'package:flight_booking/services/search_provider.dart';
import 'package:flight_booking/widgets/search_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  final searchController = TextEditingController();
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final service = Provider.of<SearchProvider>(context, listen: false);
    List<String> images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWNpNOFhd14KlSXOXw21JrWgkd4buxw8y8_A',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe93kmMDybaw1fmWtyzfbLTGZe8JABsvPSiQ',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOnykg8zgpZUx154vPETQzWSmTcq_myzd2pg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrZ6qiOcW5oc90NYqNjfhAUdje5IL3WrRMGg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqYBM8RyiWNeHg-tqq1vplXVOfH6CwgzyNmA',
    ];
    List<String> location = [
      'Banglore -> Chennai',
      'Bankok -> Thailand',
      'London <-Dubai',
      'Mumbai -> Calicut',
      'Kochi -> Newyork',
    ];
    List<String> time = [
      '11:00 pm',
      '10:15 pm',
      '09:45 pm',
      '12:00 am',
      '07:00 am',
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 232, 250),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 246, 232, 250),
        title: Text(
          'Flights',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  service.searchcompany(value);
                },
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'Search ...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Consumer<SearchProvider>(
        builder: (context, searchProvider, child) {
          return ListView.builder(
            itemCount: searchProvider.filteredCompanies.length,
            itemBuilder: (context, index) => SearchCard(
              onTap: () {
                Navigator.pushNamed(context, '/payment');
              },
              imageUrl: images[index],
              text: searchProvider.filteredCompanies[index],
              location: location[index],
              time: time[index],
            ),
          );
        },
      ),
    );
  }
}
