import 'package:flutter/material.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:touristapp/CustomWidgets/customButton.dart';
import 'package:touristapp/Resources/resource.dart';
import 'package:touristapp/Screens/HomeScreen/homescreen.dart';
import '../../../../CustomWidgets/customSearchContainer.dart';
import '../../../../CustomWidgets/customText.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  int selectedIndex = 0;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(appSize.height * 0.02),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back),
                          CustomText(
                            title: "Back",
                            textColor: Colors.black,
                            fontSize: appSize.height * 0.017,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: appSize.width * 0.28),
                    CustomText(
                      title: "Hotels",
                      textColor: Colors.black,
                      fontSize: appSize.height * 0.022,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: appSize.height * 0.3,
                  width: appSize.width * 0.920,
                  child: Image.asset(Resource.images.map),
                ),
              ),
              SizedBox(height: appSize.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Column(
                      children: [
                        CustomText(
                          title: "Starts",
                          textColor: selectedIndex == 0
                              ? Resource.colors.mainColor
                              : Colors.black,
                          fontSize: appSize.height * 0.022,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                        if (selectedIndex == 0)
                          Container(
                            height: appSize.height * 0.003,
                            width: appSize.width * 0.130,
                            color: Resource.colors.mainColor,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(width: appSize.width * 0.17),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        CustomText(
                          title: "Location",
                          textColor: selectedIndex == 1
                              ? Resource.colors.mainColor
                              : Colors.black,
                          fontSize: appSize.height * 0.022,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                        if (selectedIndex == 1)
                          Container(
                            height: appSize.height * 0.003,
                            width: appSize.width * 0.160,
                            color: Resource.colors.mainColor,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(width: appSize.width * 0.17),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: Column(
                      children: [
                        CustomText(
                          title: "Recommend",
                          textColor: selectedIndex == 2
                              ? Resource.colors.mainColor
                              : Colors.black,
                          fontSize: appSize.height * 0.022,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                        if (selectedIndex == 2)
                          Container(
                            height: appSize.height * 0.003,
                            width: appSize.width * 0.230,
                            color: Resource.colors.mainColor,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                indent: appSize.width * 0.04,
                endIndent: appSize.width * 0.04,
              ),
              SizedBox(height: appSize.height*0.002),
              if (selectedIndex == 0)
                Column(
                  children: [
                    buildRatingRow(appSize, 5.0, "5"),
                    Divider(
                      indent: appSize.width * 0.04,
                      endIndent: appSize.width * 0.04,
                    ),
                    buildRatingRow(appSize, 4.0, "4"),
                    Divider(
                      indent: appSize.width * 0.04,
                      endIndent: appSize.width * 0.04,
                    ),
                    buildRatingRow(appSize, 3.0, "3"),
                    Divider(
                      indent: appSize.width * 0.04,
                      endIndent: appSize.width * 0.04,
                    ),
                    buildRatingRow(appSize, 2.0, "2"),
                  ],
                ),
              if (selectedIndex==1)
                Container(
                  width: appSize.width*0.880,
                  height: appSize.height*0.418,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
          
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(appSize.height*0.01),
                        child: CustomSearchContainer(
                          controller: searchController,
                          hintText: "Search City Name",
                          icon: Icons.search,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(appSize.height*0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title: "Jbr",
                              textColor: Colors.black,
                              fontSize: appSize.height * 0.022,
                              textAlign: TextAlign.center,
          
                            ),
                            Divider(),
                            CustomText(
                              title: "Down Town",
                              textColor: Colors.black,
                              fontSize: appSize.height * 0.022,
                              textAlign: TextAlign.center,
          
                            ),
                            Divider(),
                            CustomText(
                              title: "Palm Jumeirah",
                              textColor: Colors.black,
                              fontSize: appSize.height * 0.022,
                              textAlign: TextAlign.center,
          
                            ),
                            Divider(),
                            CustomText(
                              title: "Airport",
                              textColor: Colors.black,
                              fontSize: appSize.height * 0.022,
                              textAlign: TextAlign.center,
          
                            ),
                            Divider(),
                            CustomText(
                              title: "Sharjah",
                              textColor: Colors.black,
                              fontSize: appSize.height * 0.022,
                              textAlign: TextAlign.center,
          
                            ),
                            Divider(),
                            CustomText(
                              title: "Business Bay",
                              textColor: Colors.black,
                              fontSize: appSize.height * 0.022,
                              textAlign: TextAlign.center,
          
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (selectedIndex==2)
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(appSize.height*0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: "Radisson Blu Hotel, Dubai Deira Creek",
                                textColor: Colors.black,
                                fontSize: appSize.height * 0.022,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  AnimatedRatingStars(
                                    initialRating: 4.5,
                                    minRating: 0.0,
                                    maxRating: 5.0,
                                    filledColor: Colors.amber,
                                    emptyColor: Colors.grey,
                                    filledIcon: Icons.star,
                                    halfFilledIcon: Icons.star_half,
                                    emptyIcon: Icons.star_border,
                                    onChanged: (double rating) {
                                      print('Rating: $rating');
                                    },
                                    displayRatingValue: true,
                                    interactiveTooltips: true,
                                    customFilledIcon: Icons.star,
                                    customHalfFilledIcon: Icons.star_half,
                                    customEmptyIcon: Icons.star_border,
                                    starSize: 20.0,
                                    animationDuration: Duration(milliseconds: 300),
                                    animationCurve: Curves.easeInOut,
                                    readOnly: false,
                                  ),
                                  SizedBox(width: appSize.width * 0.02),
                                  CustomText(
                                    title: "1.5 km",
                                    textColor: Resource.colors.mainColor,
                                    fontSize: appSize.height * 0.022,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              CustomText(
                                title: "Baniyas Road Dubai",
                                textColor: Colors.black,
                                fontSize: appSize.height * 0.022,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: appSize.width * 0.07),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
          
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(appSize.height*0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: "Burj Al Arab Jumeirah",
                                textColor: Colors.black,
                                fontSize: appSize.height * 0.022,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  AnimatedRatingStars(
                                    initialRating: 4.5,
                                    minRating: 0.0,
                                    maxRating: 5.0,
                                    filledColor: Colors.amber,
                                    emptyColor: Colors.grey,
                                    filledIcon: Icons.star,
                                    halfFilledIcon: Icons.star_half,
                                    emptyIcon: Icons.star_border,
                                    onChanged: (double rating) {
                                      print('Rating: $rating');
                                    },
                                    displayRatingValue: true,
                                    interactiveTooltips: true,
                                    customFilledIcon: Icons.star,
                                    customHalfFilledIcon: Icons.star_half,
                                    customEmptyIcon: Icons.star_border,
                                    starSize: 20.0,
                                    animationDuration: Duration(milliseconds: 300),
                                    animationCurve: Curves.easeInOut,
                                    readOnly: false,
                                  ),
                                  SizedBox(width: appSize.width * 0.02),
                                  CustomText(
                                    title: "1.5 km",
                                    textColor: Resource.colors.mainColor,
                                    fontSize: appSize.height * 0.022,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              CustomText(
                                title: "Jumeirah Beach Road Dubai.",
                                textColor: Colors.black,
                                fontSize: appSize.height * 0.022,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: appSize.width * 0.26),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(appSize.height*0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: "Atlantis, The Palm",
                                textColor: Colors.black,
                                fontSize: appSize.height * 0.022,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  AnimatedRatingStars(
                                    initialRating: 4.5,
                                    minRating: 0.0,
                                    maxRating: 5.0,
                                    filledColor: Colors.amber,
                                    emptyColor: Colors.grey,
                                    filledIcon: Icons.star,
                                    halfFilledIcon: Icons.star_half,
                                    emptyIcon: Icons.star_border,
                                    onChanged: (double rating) {
                                      print('Rating: $rating');
                                    },
                                    displayRatingValue: true,
                                    interactiveTooltips: true,
                                    customFilledIcon: Icons.star,
                                    customHalfFilledIcon: Icons.star_half,
                                    customEmptyIcon: Icons.star_border,
                                    starSize: 20.0,
                                    animationDuration: Duration(milliseconds: 300),
                                    animationCurve: Curves.easeInOut,
                                    readOnly: false,
                                  ),
                                  SizedBox(width: appSize.width * 0.02),
                                  CustomText(
                                    title: "1.5 km",
                                    textColor: Resource.colors.mainColor,
                                    fontSize: appSize.height * 0.022,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              CustomText(
                                title: "Situated on the iconic Palm Jumeirah.",
                                textColor: Colors.black,
                                fontSize: appSize.height * 0.022,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: appSize.width * 0.07),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    Divider(),
                  ],
          
                ),

              Padding(
                padding: EdgeInsets.all(appSize.height * 0.02),
                child: AppButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Resource.colors.mainColor,
                  width: appSize.width * 0.852,
                  text: "Back",
                  fontSize: appSize.height * 0.026,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRatingRow(Size appSize, double initialRating, String title) {
    return Padding(
      padding: EdgeInsets.all( appSize.height * 0.004),
      child: Row(
        children: [
          SizedBox(width: appSize.width * 0.04),
          CustomText(
            title: title,
            textColor: Colors.black,
            fontSize: appSize.height * 0.028,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(width: appSize.width * 0.02),
          AnimatedRatingStars(
            initialRating: initialRating,
            minRating: 0.0,
            maxRating: 5.0,
            filledColor: Colors.amber,
            emptyColor: Colors.grey,
            filledIcon: Icons.star,
            halfFilledIcon: Icons.star_half,
            emptyIcon: Icons.star_border,
            onChanged: (double rating) {
              print('Rating: $rating');
            },
            displayRatingValue: true,
            interactiveTooltips: true,
            customFilledIcon: Icons.star,
            customHalfFilledIcon: Icons.star_half,
            customEmptyIcon: Icons.star_border,
            starSize: 20.0,
            animationDuration: Duration(milliseconds: 300),
            animationCurve: Curves.easeInOut,
            readOnly: false,
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
