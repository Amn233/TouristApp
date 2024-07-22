
import 'package:flutter/material.dart';
import 'package:touristapp/resources/resource.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Drawer(
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
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg'), // Placeholder image
                ),
                SizedBox(height: appSize.height * 0.02),
                Text(
                  'Amna Tahir',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: appSize.height * 0.024,
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
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Hotels', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.grid_view_rounded, color: Colors.white),
              title: Text('Food', style: TextStyle(color: Colors.white)),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.grid_view_rounded, color: Colors.white),
              title: Text('Clubs & Bars', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.grid_view_rounded, color: Colors.white),
              title: Text('Tourist Attractions', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.image, color: Colors.white),
              title: Text('Excursion', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.star_border, color: Colors.white),
              title: Text('Sports', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.grid_view_rounded, color: Colors.white),
              title: Text('Clubs & Bars', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Taxi & Cars', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text('Shopping', style: TextStyle(color: Colors.white)),
              onTap: () {

              },
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: appSize.height * 0.05),
              child: Divider(color: Colors.yellow, thickness:  appSize.height * 0.001),
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
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
