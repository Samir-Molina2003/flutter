import 'package:flutter/material.dart';
import 'package:pdf/colores.dart';
import 'package:pdf/home_scren.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            imagen: "assets/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            imagen: "assets/bottom_img_2.png",
            press: () {},
          ),
          FeaturePlantCard(
            imagen: "assets/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.imagen,
    required this.press,
  }) : super(key: key);
  final String imagen;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: size.width * 0.8,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: 25 / 2,
          bottom: kDefaultPadding / 2,
        ),
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagen),
            )),
      ),
    );
  }
}
