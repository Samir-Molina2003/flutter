import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pdf/colores.dart';
import 'package:pdf/encender.dart';
import 'package:pdf/home_scren.dart';
import 'package:pdf/localnotificacion.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("icons/flower.svg"),
            onPressed: () {
              showNotificacion();
            },
          ),
          IconButton(
            icon: SvgPicture.asset("icons/user-icon.svg"),
            onPressed: () {
              showNotificacion();
            },
          ),
          IconButton(
            icon: SvgPicture.asset("icons/more.svg"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Invernadero()));
            },
          ),
        ],
      ),
    );
  }
}
