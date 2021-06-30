import 'package:flutter/material.dart';
import 'package:material_flutter_dash/models/button_object.dart';
import 'package:material_flutter_dash/utils/constants.dart';
import 'package:material_flutter_dash/widgets/branding.dart';

class DrawerAll extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(child: Container(child: ListView.separated(
        itemBuilder: (context, index) {
          if(index == 0){
            return Center(child: Branding());
          } else {
            ButtonObject button = menuButton[index - 1];
            return ListTile(
              title: Text(button.text ?? ""),
              onTap: () {
                Navigator.pop(context);
              },
            );
          }
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: menuButton.length +1
    ),
    color: Colors.blue,)
    );
  }
}