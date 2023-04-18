import 'package:flutter/material.dart';
import 'package:pdf/localnotificacion.dart';
import 'colores.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            imagen: "assets/image_1.png",
            titulo: "Opción 1",
            funcion: "Regar",
            press: () {},
            size: size,
          ),
          RecomendPlantCard(
            imagen: "assets/image_1.png",
            titulo: "Opción 2",
            funcion: "Temperatura",
            press: () {},
            size: size,
          ),
          RecomendPlantCard(
            imagen: "assets/image_1.png",
            titulo: "Opción 3",
            funcion: "Ventilar",
            press: () {},
            size: size,
          ),
          RecomendPlantCard(
            imagen: "assets/image_1.png", 
            titulo: "Opción 4",
            funcion: "Solear",
            press: () {},
            size: size,
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    required this.size,
    required this.imagen,
    required this.titulo,
    required this.funcion,
    required this.press,
  }) : super(key: key);
  final Size size;
  final String imagen, titulo, funcion;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(imagen),
          GestureDetector(
            onTap: (() {}),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$titulo\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$funcion".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
