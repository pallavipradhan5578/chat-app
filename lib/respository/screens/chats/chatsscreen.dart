import 'package:demo/respository/screens/onbording/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';

class ChatsScreen extends StatelessWidget {
  var arrchat = [
    {
      "img": "Avatar.png",
      "name": "Athalia Putri",
      "message": "Good morning, did you sleep well?",
      "date": "Today",
      "msgcount": "1"
    },
    {
      "img": "Avatar3.png",
      "name": "Erlan Sadewa",
      "message": "How is it going?",
      "date": "17/6",
      "msgcount": "0"
    },
    {
      "img": "Avatar1.png",
      "name": "Midala Huera",
      "message": "Aight, noted",
      "date": "17/6",
      "msgcount": "1"
    },
  ];

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            backgroundColor: Theme.of(context).brightness == Brightness.dark
                ? AppColors.scaffolddark
                : AppColors.scaffoldlight,
            title: UiHelper.CustomText(
                text: "Chats",
                fontsize: 18,
                context: context,
                fontweight: FontWeight.bold,
                fontfamily: "bold"),
            actions: [
              IconButton(
                icon: Icon(Icons.mark_chat_unread_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ]),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomImage(imgurl: "Story.png"),
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomImage(imgurl: "Avatar1.png"),
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomImage(imgurl: "Avatar5.png"),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomText(
                    text: "Your Story",
                    fontsize: 10,
                    context: context,
                    fontfamily: 'bold',
                    fontweight: FontWeight.bold),
                SizedBox(
                  width: 25,
                ),
                UiHelper.CustomText(
                    text: "Midala Hu...",
                    fontsize: 10,
                    context: context,
                    fontfamily: 'bold',
                    fontweight: FontWeight.bold),
                SizedBox(
                  width: 18,
                ),
                UiHelper.CustomText(
                    text: "Salsabila...",
                    fontsize: 10,
                    context: context,
                    fontfamily: 'bold',
                    fontweight: FontWeight.bold)
              ],
            ),
            Divider(
              color: AppColors.hintlightmode,
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.customTextField(
                controller: searchController,
                text: "Placeholder",
                textinputtype: TextInputType.name,
                context: context,
                icondata: Icons.search),SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: ListTile(
                      leading: UiHelper.CustomImage(
                          imgurl: arrchat[index]["img"].toString()),
                      title: UiHelper.CustomText(
                          text: arrchat[index]["name"].toString(),
                          fontsize: 14,
                          context: context),
                      subtitle: UiHelper.CustomText(
                          text: arrchat[index]["message"].toString(),
                          fontsize: 12,
                          context: context,
                          color: AppColors.hintlightmode),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UiHelper.CustomText(
                              text: arrchat[index]["date"].toString(),
                              fontsize: 10,
                              context: context,
                              color: AppColors.hintlightmode,fontweight: FontWeight.bold),
                          SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColors.circleavtar,
                            child: UiHelper.CustomText(
                                text: arrchat[index]["msgcount"].toString(),
                                fontsize: 10,
                                context: context,
                                color: AppColors.listtrealing,fontweight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: arrchat.length,
              ),
            )
          ],
        ));
  }
}
