import 'package:demo/domain/constants/appcolors.dart';
import 'package:demo/respository/screens/onbording/onbording_screen.dart';
import 'package:demo/respository/screens/onbording/widgets/uihelper.dart';
import 'package:demo/respository/screens/otp/otpscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OnBordingScreen()));
            },
            icon: Icon(CupertinoIcons.back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UiHelper.CustomText(
                text: "Enter Your Phone Number",
                fontsize: 24,
                context: context,
                fontweight: FontWeight.bold,
                fontfamily: "bold"),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomText(
                text: "Please confirm your country code and enter ",
                fontsize: 14,
                context: context),
            UiHelper.CustomText(
                text: "your phone number", fontsize: 14, context: context),
            SizedBox(
              height: 20,
            ),
            UiHelper.customTextField(
              icondata: Icons.phone,
                controller: phoneController,
                text: 'Phone Number',
                textinputtype: TextInputType.number,
                context: context)
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          buttonname: "Continue",
          callback: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OTPScreen()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
