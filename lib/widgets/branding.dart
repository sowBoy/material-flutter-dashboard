import 'package:flutter/material.dart';
import 'package:material_flutter_dash/utils/constants.dart';

class Branding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(companyLogo, height: 40, width: 40,),
        Text(
          "My Company",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontStyle: FontStyle.normal
          ),
        ),
      ],
    );
  }
}