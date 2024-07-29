import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:touristapp/CustomWidgets/customButton.dart';
import 'package:touristapp/CustomWidgets/customTextField.dart';
import 'package:touristapp/Screens/Auth/View/signUpScreen.dart';
import 'package:touristapp/Screens/HomeScreen/homescreen.dart';
import 'package:touristapp/resources/resource.dart';

import '../../../CustomWidgets/customText.dart';
import '../../../Utills/validator.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Resource.colors.mainColor,
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: appSize.height * 0.07),
              CustomText(
                title: Resource.texts.verify,
                textColor: Resource.colors.whiteColor,
                fontSize: appSize.height * 0.033,
                textAlign: TextAlign.start,
              ),
              CustomText(
                title: Resource.texts.code,
                textColor: Resource.colors.whiteColor,
                fontSize: appSize.height * 0.0185,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: appSize.height * 0.07),
              PinCodeTextField(
                appContext: context,
                length: 6,
                controller: otpController,
                obscureText: false,
                animationType: AnimationType.scale,
                keyboardType: TextInputType.phone,
                textStyle: TextStyle(color: Colors.white),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  activeColor: Colors.white,
                  selectedColor: Colors.white,
                  inactiveColor: Colors.white,

                ),
                backgroundColor: Resource.colors.mainColor,
                onChanged: (value) {},
                onCompleted: (value) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              SizedBox(height: appSize.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    title: Resource.texts.receivecode,
                    textColor: Resource.colors.whiteColor,
                    fontSize: appSize.height * 0.0185,
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: CustomText(
                      title: Resource.texts.newone,
                      textColor: Colors.yellow,
                      fontSize: appSize.height * 0.0185,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(height: appSize.height * 0.07),
              Center(
                child: AppButton(
                  onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  color: Resource.colors.whiteColor,
                  width: appSize.width * 0.9,
                  text: "Verify",
                  height: appSize.height * 0.064,
                  textColor: Resource.colors.mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
