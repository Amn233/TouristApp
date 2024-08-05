
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:touristapp/Screens/HomeScreen/Drawer/DrawerItems/hotelsScreen.dart';
import 'package:touristapp/resources/resource.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Drawer(
      width: appSize.width * 0.8,
      child: Container(
        color: Resource.colors.mainColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children:[
            Column(
              children: [
                SizedBox(height: appSize.height * 0.05),
                CircleAvatar(
                  radius:  appSize.height * 0.060,
                  backgroundImage: AssetImage("assets/images/dp.jpg"), // Placeholder image
                ),
                SizedBox(height: appSize.height * 0.02),
                Text(
                  'Muhammad Zohaib',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: appSize.height * 0.022,
                  ),
                ),
              ],
            ),
            SizedBox(height: appSize.height * 0.013),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: appSize.height * 0.05),
              child: Divider(color: Colors.yellow, thickness: appSize.height * 0.001),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/svgs/home.svg"),
              title: Text('Hotels', style: TextStyle(color: Colors.white)),
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Hotels()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/svgs/menu.svg"),
              title: Text('Food', style: TextStyle(color: Colors.white)),
              onTap: () {
              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/svgs/menuAdd.svg"),
              title: Text('Clubs & Bars', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading:SvgPicture.asset("assets/svgs/qrcode.svg"),
              title: Text('Tourist Attractions', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/svgs/removeGallery.svg"),
              title: Text('Excursion', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/svgs/star.svg"),
              title: Text('Sports', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/svgs/info.svg"),
              title: Text('Clubs & Bars', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.car_rental, color: Colors.white),
              title: Text('Taxi & Cars', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/svgs/Logout.svg"),
              title: Text('Shopping', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: appSize.height * 0.05),
              child: Divider(color: Colors.yellow, thickness:  appSize.height * 0.001),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/svgs/Logout.svg"),
              title: Text('Log Out', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
