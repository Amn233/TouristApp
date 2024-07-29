import 'package:flutter/material.dart';
import 'package:touristapp/CustomWidgets/customButton.dart';
import 'package:touristapp/CustomWidgets/customTextField.dart';
import 'package:touristapp/Screens/Auth/View/loginScreen.dart';
import 'package:touristapp/Screens/Auth/View/otpScreen.dart';
import 'package:touristapp/Screens/HomeScreen/homescreen.dart';
import 'package:touristapp/resources/resource.dart';

import '../../../CustomWidgets/customText.dart';
import '../../../Utills/validator.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool _isPasswordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Resource.colors.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: appSize.height * 0.07),
                CustomText(
                  title: Resource.texts.register,
                  textColor: Resource.colors.whiteColor,
                  fontSize: appSize.height * 0.033,
                  textAlign: TextAlign.center,
                ),
                CustomText(
                  title: Resource.texts.welcome,
                  textColor: Resource.colors.whiteColor,
                  fontSize: appSize.height * 0.0186,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: appSize.height * 0.07),
                CustomTextField(
                  hintText: "Full Name",
                  controller: nameController,
                  prefixIcon: "assets/svgs/profile.svg",
                  obscureText: false,
                  validator: FieldValidator.validateName,
                  keyboardType: TextInputType.text,
                  hintTextColor: Resource.colors.mainColor,
                  prefixIconColor: Resource.colors.mainColor,
                ),
                SizedBox(height: appSize.height * 0.02),
                CustomTextField(
                  hintText: "Email/Phone number",
                  controller: emailController,
                  prefixIcon:"assets/svgs/message.svg",
                  obscureText: false,
                  validator: FieldValidator.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                  hintTextColor: Resource.colors.mainColor,
                  prefixIconColor: Resource.colors.mainColor,
                ),
                SizedBox(height: appSize.height * 0.02),
                CustomTextField(
                  hintText: "Phone Number",
                  controller: phoneController,

                  obscureText: false,
                  validator: FieldValidator.validatePhone,
                  keyboardType: TextInputType.phone,
                  hintTextColor: Resource.colors.mainColor,
                  prefixIconColor: Resource.colors.mainColor,
                ),
                SizedBox(height: appSize.height * 0.02),
                CustomTextField(
                  hintText: "Password",
                  controller: passwordController,
                  prefixIcon: "assets/svgs/lock.svg",
                  obscureText: !_isPasswordVisible,
                  validator: FieldValidator.validatePassword,
                  keyboardType: TextInputType.text,
                  suffixIcon: _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  onSuffixIconPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                  hintTextColor: Resource.colors.mainColor,
                  prefixIconColor: Resource.colors.mainColor,
                  suffixIconColor: Resource.colors.mainColor,
                ),
                SizedBox(height: appSize.height * 0.13),
                Center(
                  child: AppButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => OtpScreen()),
                      );
                    },
                    color: Resource.colors.whiteColor,
                    width: appSize.width * 0.9,
                    text: Resource.texts.register,
                    height: appSize.height * 0.064,
                    textColor: Resource.colors.mainColor,
                  ),
                ),
                SizedBox(height: appSize.height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: Resource.texts.already,
                      textColor: Resource.colors.whiteColor,
                      fontSize: appSize.height * 0.0185,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: CustomText(
                        title: Resource.texts.login,
                        textColor: Colors.yellow,
                        fontSize: appSize.height * 0.0185,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
