
import 'package:flutter/material.dart';
import 'package:touristapp/CustomWidgets/customText.dart';
import 'package:touristapp/Resources/resource.dart';


import 'Drawer/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(title: Resource.texts.slogan, textColor:  Resource.colors.mainColor, fontSize: appSize.height*0.02, textAlign: TextAlign.center)

      ),
      drawer: const CustomDrawer(),
    );
  }
}
