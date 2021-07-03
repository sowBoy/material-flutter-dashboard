import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_flutter_dash/models/post.dart';
import 'package:material_flutter_dash/utils/constants.dart';

// ignore: must_be_immutable
class WebBar extends AppBar {
  WebBar(): super(
      backgroundColor: greyColor,
      title: Text('Greeting Comp...', style: TextStyle(color: Colors.black)),
      actions: [
        SafeArea(child: SearchBar<Post>(
          onSearch: search,
          onItemFound: (Post post, int index) {
            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.description),
            );
          },
        ))

      ]
  );
}