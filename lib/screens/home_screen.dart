import 'package:flight_booking/widgets/carousel_slider.dart';
import 'package:flight_booking/widgets/circular_button.dart';
import 'package:flight_booking/widgets/destination_card.dart';
import 'package:flight_booking/widgets/popular%20card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> location = [
      'banglore -> chennai',
      'sydney <- newyork',
      'banglore -> kochi',
      'greece <- UAE',
      'sharja -> UAE'
    ];
    List<String> images = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWNpNOFhd14KlSXOXw21JrWgkd4buxw8y8_A',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe93kmMDybaw1fmWtyzfbLTGZe8JABsvPSiQ',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOnykg8zgpZUx154vPETQzWSmTcq_myzd2pg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrZ6qiOcW5oc90NYqNjfhAUdje5IL3WrRMGg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqYBM8RyiWNeHg-tqq1vplXVOfH6CwgzyNmA',
    ];
    List<String> city = [
      'Germany',
      'Poland',
      'Manchester',
      'UAE',
      'Kochi',
    ];
    List<String> spots = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp8A8P8JbkDuoHIInvbq00Dp1VJ-GT85gcDA',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjE62WCHpL4Wef4nMwKpIrnOBAzX1VV3AMJw',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeW_IJVhrevFVZLj-V3hn4CfBSxDuf748k-w',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxdmoRgj6xvZfpbppXH26sYusECL2GzNo-yA',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTejNMv-zw2gpGz6QTJtdHpMr6E0PwmrNmxQg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WelCome to Travelista',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white,
              Color.fromARGB(255, 219, 217, 217),
              Color.fromRGBO(191, 166, 238, 1),
              Color.fromRGBO(166, 135, 223, 1),
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Carousel(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/search');
                      },
                      child: const CircularButton(
                        icon: Icons.flight,
                        text: 'Flight',
                      ),
                    ),
                    const CircularButton(
                      icon: Icons.location_city,
                      text: 'City',
                    ),
                    const CircularButton(
                      icon: Icons.car_rental,
                      text: 'Car',
                    ),
                    const CircularButton(
                      icon: Icons.bus_alert,
                      text: 'Bus',
                    ),
                    const CircularButton(
                      icon: Icons.train,
                      text: 'Train',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Explore Destinations',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Center(
                        child: DestinationCard(
                      imageUrl: spots[index],
                      text: city[index],
                    ));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Upcoming Flights',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: location.length,
                  itemBuilder: (context, index) {
                    return Center(
                        child: PopularCard(
                      imageUrl: images[index],
                      text: location[index],
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
