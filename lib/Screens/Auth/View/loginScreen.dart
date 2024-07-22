import 'package:flutter/material.dart';
import 'package:touristapp/CustomWidgets/customTextField.dart';
import 'package:touristapp/Screens/Auth/View/signUpScreen.dart';
import 'package:touristapp/resources/resource.dart';

import '../../../CustomWidgets/customText.dart';
import '../../../Utills/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, perform login or other actions
      // For now, we will just print the email for demonstration
      print('Logging in with email: ${emailController.text}');
    }
  }

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
                  title: Resource.texts.login,
                  textColor: Resource.colors.whiteColor,
                  fontSize: appSize.height * 0.040,
                  textAlign: TextAlign.center,
                ),
                CustomText(
                  title: Resource.texts.welcome,
                  textColor: Resource.colors.whiteColor,
                  fontSize: appSize.height * 0.022,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: appSize.height * 0.07),
                CustomTextField(
                  hintText: "Email/Phone number",
                  controller: emailController,
                  prefixIcon: Icons.email_outlined,
                  obscureText: false,
                  validator: FieldValidator.validateEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: appSize.height * 0.02),
                CustomTextField(
                  hintText: "Password",
                  controller: passwordController,
                  prefixIcon: Icons.lock_outline,
                  obscureText: !_isPasswordVisible,
                  validator: FieldValidator.validatePassword,
                  keyboardType: TextInputType.text,
                  suffixIcon: _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  onSuffixIconPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                SizedBox(height: appSize.height * 0.35),
                GestureDetector(
                  onTap: _submitForm,
                  child: Container(
                    height: 55,
                    width: 400,
                    color: Colors.white,
                    child: Center(
                      child: CustomText(
                        title: Resource.texts.login,
                        textColor: Resource.colors.mainColor,
                        fontSize: 20,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: appSize.height * 0.008),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: Resource.texts.don,
                      textColor: Resource.colors.whiteColor,
                      fontSize: appSize.height * 0.02,
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Register()));
                      },
                      child: CustomText(
                        title: Resource.texts.signupnow,
                        textColor: Colors.yellow,
                        fontSize: appSize.height * 0.02,
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
