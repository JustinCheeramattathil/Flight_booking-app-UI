import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/8b/8d/76/8b8d762b08f1e574ad0fe5935dd5c181.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/f5/dd/c9/f5ddc924caa5573e7a79a07c9418833d.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/bd/ad/ec/bdadecf6137664bbf83ce5c528d85602.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/2d/4e/79/2d4e796047ee269eb6a7bc080311d79d.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/bd/ad/ec/bdadecf6137664bbf83ce5c528d85602.jpg'),
                fit: BoxFit.cover,
              )),
        ),
      ],
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 4 / 3,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
