import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pdf/colores.dart';
import 'appbar.dart';
import 'botones.dart';
import 'header.dart';
import 'titulo.dart';
import 'package:pdf/localnotificacion.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Caja(size: size),
          TitleWithMoreBtn(title: '¿Qué haremos?', press: () {}),
          RecomendsPlants(size: size,),
          TitleWithMoreBtn(title: "Otras opciones", press: () {},),
          const FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

