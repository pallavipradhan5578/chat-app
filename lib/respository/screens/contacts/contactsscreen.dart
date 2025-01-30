import 'package:demo/respository/screens/onbording/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "Avatar.png",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday"
    },
    {"img": "Avatar3.png", "name": "Erlan Sadewa", "lastseen": "Online"},
    {
      "img": "Avatar1.png",
      "name": "Midala Huera",
      "lastseen": "Last seen 3 hours ago"
    },
    {"img": "Avatar2.png", "name": "Nafisa Gitari", "lastseen": "Online"},
    {"img": "Avatar4.png", "name": "Raki Devon", "lastseen": "Online"},
    {
      "img": "Avatar5.png",
      "name": "Salsabila Akira",
      "lastseen": "Last seen 30 minutes ago"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
        //  automaticallyImplyLeading: false,

          title: UiHelper.CustomText(
              text: "Contacts", fontsize: 18, context: context),
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? AppColors.scaffolddark
              : AppColors.scaffoldlight,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              UiHelper.customTextField(
                  controller: searchController,
                  text: "Search",
                  textinputtype: TextInputType.name,
                  context: context,
                  icondata: Icons.search),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ListTile(
                        leading: UiHelper.CustomImage(
                            imgurl: arrContacts[index]["img"].toString()),
                        title: UiHelper.CustomText(
                            text: arrContacts[index]["name"].toString(),
                            context: context,
                            fontsize: 14,
                            fontweight: FontWeight.w600),
                        subtitle: UiHelper.CustomText(
                          text: arrContacts[index]["lastseen"].toString(),
                          context: context,
                          color: AppColors.iconlight,
                          fontsize: 12,
                        ),
                      ),
                    );
                  },
                  itemCount: arrContacts.length,

                ),
              )
            ],
          ),
        ));
  }
}
