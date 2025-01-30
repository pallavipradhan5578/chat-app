import 'package:demo/domain/constants/cubits/themecubit.dart';
import 'package:demo/domain/constants/cubits/themestate.dart';
import 'package:demo/respository/screens/onbording/onbording_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'domain/constants/appthemes.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit,ThemeStates>(
      builder: ( context,  state) { return MaterialApp(
        themeMode: ThemeMode.dark,
        title: 'Chat App',
        debugShowCheckedModeBanner: false,
         theme:state is LightThemeStates ?AppTheme.lightTheme:AppTheme.darkTheme,
        home: OnBordingScreen(),
      );},

    );
  }
}
