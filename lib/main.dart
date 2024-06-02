import 'package:flutter/material.dart';
import 'package:o_xgame/Gamers/Fristpage1.dart';
import 'package:o_xgame/Gamers/Second_page.dart';
import 'package:o_xgame/Gamers/third_page3.dart';
import 'package:o_xgame/Global_Variabls/canditions.dart';
void main()
{
  runApp(OX_Game());
}
class OX_Game extends StatelessWidget {
  const OX_Game({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) =>start_page(),
        '/pa':(context) => play_screen(),
        '/th':(context) => third_Page(),
      },
    );
  }
}
