import 'package:demo/domain/constants/appcolors.dart';
import 'package:demo/respository/screens/bottomnav/bottomnavigationscreen.dart';
import 'package:demo/respository/screens/onbording/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(CupertinoIcons.back)),
        title: UiHelper.CustomText(
            text: "Your Profile",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.bold,
            fontfamily: 'bold'),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "darkprofile.png")
                : UiHelper.CustomImage(imgurl: "lightprofile.png"),
            SizedBox(
              height: 30,
            ),
            UiHelper.customTextField(
                controller: firstnameController,
                text: "First Name (Required)",
                textinputtype: TextInputType.name,
                context: context,icondata: Icons.person),
            SizedBox(height: 5,),
            UiHelper.customTextField(
                controller: lastnameController,
                text: "Last Name (Optional)",
                textinputtype: TextInputType.name,
                context: context,icondata: CupertinoIcons.person_2),
            ],
        ),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
      floatingActionButton: UiHelper.CustomButton(buttonname: "Save", callback: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigationScreen()));
      },),
    );
  }
}
