import 'package:flutter/material.dart';
import 'package:touristapp/Screens/Auth/view/loginScreen.dart';
import 'package:touristapp/Screens/OnBoarding/dataModel.dart';
import 'package:touristapp/resources/resource.dart';
import '../../CustomWidgets/customText.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {


  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void navigateToSignIn() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: appSize.width * 0.999,
            height: appSize.height * 0.770,
            decoration: BoxDecoration(
              color: Resource.colors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(appSize.height * 0.035),
                bottomRight: Radius.circular(appSize.height * 0.035),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: appSize.width*0.03,top: appSize.height*0.04),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        if (currentIndex < onboarding.length - 1) {
                          _pageController.animateToPage(
                            onboarding.length - 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        } else {
                          navigateToSignIn();
                        }
                      },
                      style: TextButton.styleFrom(
                        shadowColor: Colors.transparent,
                      ),
                      child: CustomText(
                        title: currentIndex < onboarding.length - 1 ? 'Skip' : '',
                        textColor: Colors.white,
                        fontSize: appSize.height * 0.02,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: onboarding.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.all(appSize.height * 0.016),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              onboarding[index]['image']!,
                              height: appSize.height * 0.300,
                            ),
                            SizedBox(height: appSize.height * 0.022),
                            CustomText(
                              title: onboarding[index]['title']!,
                              textColor: Colors.white,
                              fontSize: appSize.height * 0.03,
                              fontFamily: "OpenSans",
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: appSize.height * 0.022),
                            CustomText(
                              title: onboarding[index]['desc']!,
                              textColor: Colors.white,
                              fontSize: appSize.height * 0.02,
                              fontFamily: "OpenSans",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: appSize.height * 0.062),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboarding.length,
                  (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: appSize.height * 0.006),
                width: appSize.height * 0.010,
                height: appSize.height * 0.02,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == index
                      ? Resource.colors.mainColor
                      : Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: appSize.height * 0.022),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(appSize.height * 0.019),
            child: ElevatedButton(
              onPressed: () {
                if (currentIndex < onboarding.length - 1) {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                } else {
                  navigateToSignIn();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Resource.colors.mainColor,
                padding: EdgeInsets.symmetric(vertical: appSize.height * 0.018),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: CustomText(
                title: currentIndex < onboarding.length - 1 ? Resource.texts.next : Resource.texts.started,
                textColor: Resource.colors.whiteColor,
                fontSize: appSize.height * 0.022,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
