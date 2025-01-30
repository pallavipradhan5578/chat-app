import 'package:demo/domain/constants/appcolors.dart';
import 'package:demo/respository/screens/onbording/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  var arrMore = [
    {
      'icon': Icons.person,
      'txt': 'Account',
    },
    {
      'icon': Icons.wb_sunny_outlined,
      'txt': 'Chats',
    },
    {
      'icon': CupertinoIcons.chat_bubble_fill,
      'txt': 'Appereance',
    },
    {
      'icon': Icons.notifications_active,
      'txt': 'Notification',
    },
    {
      'icon': Icons.privacy_tip,
      'txt': 'Privacy',
    },
    {
      'icon': Icons.folder,
      'txt': 'Data Usage',
    },
    {
      'icon': Icons.help,
      'txt': 'Help',
    },
    {
      'icon': Icons.mail,
      'txt': 'Invite Your Friends',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
            text: "More",
            fontsize: 18,
            context: context,
            fontweight: FontWeight.bold,
            fontfamily: 'bold'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "darkprofile.png")
                : UiHelper.CustomImage(imgurl: "lightprofile.png"),
            title: UiHelper.CustomText(
                text: "Sujal Dave",
                fontsize: 14,
                context: context,
                fontweight: FontWeight.bold,
                fontfamily: 'bold'),
            subtitle: UiHelper.CustomText(
                text: "+62 1309 - 1710 - 1920",
                fontsize: 12,
                context: context,
                color: AppColors.iconlight),
            trailing: Icon(CupertinoIcons.forward),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    arrMore[index]["icon"] as IconData,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.icondarkmode
                        : AppColors.iconlightmode,
                  ),
                  title: UiHelper.CustomText(
                    text: arrMore[index]['txt'].toString(),
                    fontsize: 14,
                    context: context,
                    fontweight: FontWeight.bold,
                  ),
                  trailing: Icon(CupertinoIcons.forward),
                );
              },
              itemCount: arrMore.length,
            ),
          )
        ],
      ),
    );
  }
}
