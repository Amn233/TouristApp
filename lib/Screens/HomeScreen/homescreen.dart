import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:touristapp/CustomWidgets/customSearchContainer.dart';
import 'package:touristapp/CustomWidgets/customText.dart';
import 'package:touristapp/Resources/resource.dart';
import '../../CustomWidgets/customBottomNavigationBar.dart';
import 'Drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  GoogleMapController? mapController;
  final LatLng _center = const LatLng(31.475897, 74.469511);
  int _currentIndex = 0;

  List<Marker> marker = [];
  List<Marker> list = const [
    Marker(
        markerId: MarkerId("1"),
        position: LatLng(31.475897, 74.469511),
        infoWindow: InfoWindow(title: "My Location"))
  ];

  @override
  void initState() {
    super.initState();
    marker.addAll(list);
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    switch (index) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          title: Resource.texts.slogan,
          textColor: Resource.colors.mainColor,
          fontSize: appSize.height * 0.04,
          textAlign: TextAlign.center,
        ),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: CustomSearchContainer(
              controller: searchController,
              hintText: "Search Food, Restaurants etc.",
              icon: Icons.search,
            ),
          ),
          SizedBox(height: appSize.height * 0.01),
          Container(
            height: appSize.height * 0.300,
            width: appSize.width * 0.898,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 15.0,
              ),
              markers: Set<Marker>.of(marker),
            ),
          ),
          SizedBox(height: appSize.height * 0.02),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  title: "See All >",
                  textColor: Resource.colors.mainColor,
                  fontSize: appSize.height * 0.02,
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ),
          SizedBox(height: appSize.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: appSize.width * 0.255,
                height: appSize.height * 0.125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(Resource.images.Rectangle14),
              ),
              Container(
                width: appSize.width * 0.255,
                height: appSize.height * 0.125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(Resource.images.Rectangle15),
              ),
              Container(
                width: appSize.width * 0.255,
                height: appSize.height * 0.125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(Resource.images.Rectangle16),
              ),
            ],
          ),
          SizedBox(height: appSize.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: appSize.width * 0.255,
                height: appSize.height * 0.125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(Resource.images.Rectangle17),
              ),
              Container(
                width: appSize.width * 0.255,
                height: appSize.height * 0.125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(Resource.images.Rectangle18),
              ),
              Container(
                width: appSize.width * 0.255,
                height: appSize.height * 0.125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(Resource.images.Rectangle19),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}