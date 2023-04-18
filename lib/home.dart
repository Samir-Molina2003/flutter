import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pdf/body.dart';
import 'package:pdf/colores.dart';

import 'boton.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF0C9869),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}

