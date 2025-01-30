import 'package:demo/domain/constants/appcolors.dart';
import 'package:demo/respository/screens/chats/chatsscreen.dart';
import 'package:demo/respository/screens/contacts/contactsscreen.dart';
import 'package:demo/respository/screens/more/morescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;
  List<Widget> pages = [ContactsScreen(), ChatsScreen(), MoreScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_2_alt), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_fill), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More")
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIconTheme: IconThemeData(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.icondarkmode
                : AppColors.iconlightmode),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.bottomdark
            : AppColors.bottomlight,
      ),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
