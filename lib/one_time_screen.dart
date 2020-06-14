import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Content.dart';

class OneTimeScreen extends StatelessWidget {
  static const String id = "/intro";
  final Decoration decoration;
  final double height;
  final List<Content> items;
  OneTimeScreen({this.height, this.decoration, @required this.items});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(30),
      height: double.infinity,
      decoration: decoration,
      child: CarouselSlider(
        items: items,
        options: CarouselOptions(
          height: height,
          scrollPhysics: BouncingScrollPhysics(),
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
//          height: 500,
        ),
      ),
    ));
  }
}
