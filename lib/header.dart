import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colores.dart';

class Caja extends StatelessWidget {
  const Caja({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
    height: size.height  * 0.2,
    child: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: 36 + kDefaultPadding,
          
          ),
          height: size.height * 0.2 - 27,
          decoration: BoxDecoration(color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(36),
            bottomRight: Radius.circular(36),
            ),
          ),
          child: Row(
            children: <Widget>[
              Text("¡Hola!", style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Image.asset("assets/inv.webp")
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23)
                ),
              ]
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                    left: kDefaultPadding,),
                    child: TextField(
                      onChanged: (value){},
                    decoration: InputDecoration(
                    hintText: "Buscar",
                    hintStyle: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                                ),
                              ),
                  ),
                  ),
                  Container(
                  padding: EdgeInsets.only(right: 20),
                  child: SvgPicture.asset("icons/search.svg")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}