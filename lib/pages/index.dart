import 'package:flutter/material.dart';
import 'package:material_flutter_dash/models/make_it_responsive.dart';
import 'package:material_flutter_dash/widgets/drawer_all.dart';
import 'package:material_flutter_dash/widgets/phone_bar.dart';
import 'package:material_flutter_dash/widgets/web_bar.dart';

class Index extends StatefulWidget {
  @override
  createState() => _IndexState();
}

class _IndexState extends State<Index> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    return Scaffold(
      appBar: (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(),
      drawer: DrawerAll(),
    );
  }
}