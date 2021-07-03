import 'package:flutter/material.dart';
import 'package:material_flutter_dash/models/button_object.dart';
import 'package:material_flutter_dash/models/post.dart';

//Images
String companyLogo = "images/material-logo.jpeg";
//Colors
Color greyColor = Color.fromRGBO(233, 234, 239, 0.9921568627450981);

//Button
List<ButtonObject> menuButton = [
  ButtonObject(text: "Ma cuisine"),
  ButtonObject(text: "Mes recettes"),
  ButtonObject(text: "Blog")
];

Future<List<Post>> search(String search) async {
  await Future.delayed(Duration(seconds: 2));
  return List.generate(search.length, (int index) {
    return Post(
      "Title : $search $index",
      "Description :$search $index",
    );
  });
}