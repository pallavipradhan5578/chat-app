import 'package:demo/domain/constants/appcolors.dart';
import 'package:demo/domain/constants/cubits/themecubit.dart';
import 'package:demo/respository/screens/login/loginscreen.dart';
import 'package:demo/respository/screens/onbording/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<ThemeCubit>(context).toggleTheme();
              },
              icon: Icon(Icons.dark_mode))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "onbording.png"),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "Connect easily with",
                fontsize: 24,
                fontweight: FontWeight.bold,
                context: context,
                fontfamily: 'bold'),
            UiHelper.CustomText(
                text: "your family and friends ",
                fontsize: 24,
                fontweight: FontWeight.bold,
                context: context,
                fontfamily: 'bold'),
            UiHelper.CustomText(
                text: "over countries",
                fontsize: 24,
                fontweight: FontWeight.bold,
                context: context,
                fontfamily: 'bold'),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          buttonname: "Start Messaging",
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
